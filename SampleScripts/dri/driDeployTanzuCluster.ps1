# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2021-03-23
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================

    .CHANGELOG
    - 1.1.000   (Gary Blake / 2022-10-03)   - Added support for VCF 4.5.x Planning and Prep Workbook
    - 1.2.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Improvements to message output

    ===================================================================================================================
    
    .SYNOPSIS
    Deploy a Tanzu Cluster for Developer Ready Infrastructure

    .DESCRIPTION
    The driDeployTanzuCluster.ps1 provides a single script to deploy a Tanzu Kubernetes Cluster as defined by the
    Developer Ready Infrastrucutre for VMware Cloud Foundation Validated Solution

    .EXAMPLE
    driDeployTanzuCluster.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the deployment of a Tanzu Kubernetes Cluster using the parameters provided within the Planning and Preparation Workbook
#>

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$filePath
)

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Deploying a Tanzu Cluster on Developer Ready Infrastrucutre for VMware Cloud Foundation Validated Solution" -Colour Yellow
Write-LogMessage -Type INFO -Message "Setting up the log file to path $logfile"
Write-LogMessage -Type INFO -Message "Setting the working directoy to path: $filePath"

# Perform validation on inputs
Try {
    Write-LogMessage -Type INFO -Message "Checking a Connection to SDDC Manager: $sddcManagerFqdn"
    if (!(Test-Connection -ComputerName $sddcManagerFqdn -Count 1 -ErrorAction SilentlyContinue)) {
        Write-LogMessage -Type ERROR -Message "Unable to connect to server: $sddcManagerFqdn, check details and try again" -Colour Red
        Break
    } else {
        Write-LogMessage -Type INFO -Message "Connection to SDDC Manager: $sddcManagerFqdn was Successful"
    }
    Write-LogMessage -Type INFO -Message "Checking Existance of Planning and Preparation Workbook: $workbook"
    if (!(Test-Path $workbook )) {
        Write-LogMessage -Type ERROR -Message "Unable to Find Planning and Preparation Workbook: $workbook, check details and try again" -Colour Red
        Break
    } else {
        Write-LogMessage -Type INFO -Message "Found Planning and Preparation Workbook: $workbook"
    }
}
Catch {
    Debug-CatchWriter -object $_
}

Try {
    Write-LogMessage -Type INFO -Message "Attempting to connect to VMware Cloud Foundation to Gather System Details"
    $StatusMsg = Request-VCFToken -fqdn $sddcManagerFqdn -username $sddcManagerUser -password $sddcManagerPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message $StatusMsg } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    if ($accessToken) {
        Write-LogMessage -Type INFO -Message "Gathering Details from SDDC Manager Inventory and Extracting Worksheet Data from the Excel Workbook"

        Write-LogMessage -type INFO -message "Opening the Excel Workbook: $Workbook"
        $pnpWorkbook = Open-ExcelPackage -Path $Workbook

        Write-LogMessage -type INFO -message "Checking Valid Planning and Prepatation Workbook Provided"
        if (($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.3.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.4.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.5.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v5.0.x")) {
            Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
            Break
        } else {
            Write-LogMessage -type INFO -message "Supported Planning and Preparation Workbook Provided. Version: $(($pnpWorkbook.Workbook.Names["vcf_version"].Value))"
        }

        $domainFqdn                         = $pnpWorkbook.Workbook.Names["region_ad_child_fqdn"].Value
        $wldSddcDomainName                  = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value

        $wmClusterName                      = $pnpWorkbook.Workbook.Names["wld_cluster"].Value
        $wmNamespaceName                    = $pnpWorkbook.Workbook.Names["k8s_cluster_name"].Value
        $spbmPolicyName                     = $pnpWorkbook.Workbook.Names["k8s_vcenter_storage_policy"].Value
        $domainBindUser                     = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_user"].Value
        $domainBindPass                     = $pnpWorkbook.Workbook.Names["child_svc_vsphere_ad_password"].Value
        $wmNamespaceEditUserGroup           = $pnpWorkbook.Workbook.Names["group_gg_kub_admins"].Value
        $wmNamespaceViewUserGroup           = $pnpWorkbook.Workbook.Names["group_gg_kub_readonly"].Value
        $vmClass                            = $pnpWorkbook.Workbook.Names["k8s_vm_class"].Value
    } else {
        Write-LogMessage -Type ERROR -Message "Unable to connect to SDDC Manager $server" -Colour Red
        Exit
    }
} Catch {
    Debug-CatchWriter -object $_
}

Try {
    # Deploy a Namespace for the Tanzu Kubernetes Cluster
    Write-LogMessage -Type INFO -Message "Deploy a Namespace for the Tanzu Kubernetes Cluster"
    $StatusMsg = Add-Namespace -Server $sddcManagerFqdn -User $sddcManagerUser -Pass $sddcManagerPass -Domain $wldSddcDomainName -Cluster $wmClusterName -Namespace $wmNamespaceName -StoragePolicy $spbmPolicyName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg"; $ErrorMsg = $null } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    # Assign the New Tanzu Cluster Namespace Roles to Active Directory Groups
    Write-LogMessage -Type INFO -Message "Attempting to Assign the New Tanzu Cluster Namespace Roles to Active Directory Groups"
    $StatusMsg = Add-NamespacePermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $wldSddcDomainName -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -namespace $wmNamespaceName -principal $wmNamespaceEditUserGroup -role edit -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    $StatusMsg = Add-NamespacePermission -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -sddcDomain $wldSddcDomainName -domain $domainFqdn -domainBindUser $domainBindUser -domainBindPass $domainBindPass -namespace $wmNamespaceName -principal $wmNamespaceViewUserGroup -role view -type group -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    # Enable a Virtual Machine Class for the Tanzu Kubernetes Cluster
    Write-LogMessage -Type INFO -Message "Attempting to Enable a Virtual Machine Class for the Tanzu Kubernetes Cluster"
    $StatusMsg = Add-NamespaceVmClass -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -Namespace $wmNamespaceName -VMClass $vmClass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

    # Provision a Tanzu Kubernetes Cluster
    Write-LogMessage -Type INFO -Message "Attempting to Provision a Tanzu Kubernetes Cluster"
    $StatusMsg = Add-TanzuKubernetesCluster -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -cluster $wmClusterName -yaml .\SampleYaml\sfo-w01-tkc01-cluster.yaml -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
    if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Deploying a Tanzu Cluster on Developer Ready Infrastrucutre for VMware Cloud Foundation Validated Solution" -Colour Yellow
