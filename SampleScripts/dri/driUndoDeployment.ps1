# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2022-03-23
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================

    .CHANGELOG
    - 1.1.000   (Gary Blake / 2022-10-03)   - Added support for VCF 4.5.x Planning and Prep Workbook
    - 1.2.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Improvements to message output

    ===================================================================================================================
        
    .SYNOPSIS
    Remove Developer Ready Infrastructure from a VMware Cloud Foundation Instance

    .DESCRIPTION
    The driUndoDeployment.ps1 provides a single script to remove Developer Ready Infrastructure from a VMware Cloud
    Foundation Instance

    .EXAMPLE
    driUndoDeployment.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the removal of Developer Ready Infrastructure from a VMware Cloud Foundation Instance using the parameters provided within the Planning and Preparation Workbook
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
Write-LogMessage -Type INFO -Message "Starting the Process of Removing Developer Ready Infrastrucutre from VMware Cloud Foundation Instance" -Colour Yellow
Write-LogMessage -Type INFO -Message "Setting up the log file to path $logfile"
Write-LogMessage -Type INFO -Message "Setting the working directoy to path: $filePath"

Try {
    Write-LogMessage -Type INFO -Message "Checking Existance of Planning and Preparation Workbook: $workbook"
    if (!(Test-Path $workbook )) {
        Write-LogMessage -Type ERROR -Message "Unable to Find Planning and Preparation Workbook: $workbook, check details and try again" -Colour Red
        Break
    } else {
        Write-LogMessage -Type INFO -Message "Found Planning and Preparation Workbook: $workbook"
    }
    Write-LogMessage -Type INFO -Message "Checking a Connection to SDDC Manager: $sddcManagerFqdn"
    if (Test-VCFConnection -server $sddcManagerFqdn ) {
        Write-LogMessage -Type INFO -Message "Attempting to connect to VMware Cloud Foundation to Gather System Details"
        if (Test-VCFAuthentication -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass) {
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

            $wldSddcDomainName                  = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $wmClusterName                      = $pnpWorkbook.Workbook.Names["wld_cluster"].Value
            $wmNamespaceName                    = $pnpWorkbook.Workbook.Names["k8s_cluster_name"].Value
            $wmTkcName                          = $pnpWorkbook.Workbook.Names["k8s_cluster_name"].Value
            $supervisorNamespace                = $pnpWorkbook.Workbook.Names["k8s_namepsace"].Value
            $contentLibraryName                 = $pnpWorkbook.Workbook.Names["k8s_vcenter_content_library"].Value
            $storagePolicy                      = $pnpWorkbook.Workbook.Names["k8s_vcenter_storage_policy"].Value
            $tagCategoryName                    = $pnpWorkbook.Workbook.Names["k8s_vcenter_category"].Value
            $tagName                            = $pnpWorkbook.Workbook.Names["k8s_vcenter_tag"].Value
            $wldTier0Gateway                    = $pnpWorkbook.Workbook.Names["wld_tier0_name"].Value
            $kubSegmentName                     = $pnpWorkbook.Workbook.Names["k8s_mgmt_seg"].Value
            $wldRouteMapName                    = $pnpWorkbook.Workbook.Names["k8s_ip_routemap"].Value
            $wldPrefixListName                  = $pnpWorkbook.Workbook.Names["k8s_ip_prefixlist"].Value
            
            # Remove a Tanzu Kubernetes Cluster from Supervisor Cluster
            Write-LogMessage -Type INFO -Message "Remove a Tanzu Kubernetes Cluster from Supervisor Cluster"    
            $StatusMsg = Undo-TanzuKubernetesCluster -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -cluster $wmClusterName -tkc $wmTkcName -namespace $wmNamespaceName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green; $ErrorMsg = '' } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove a Namespace from Supervisor Cluster
            Write-LogMessage -Type INFO -Message "Remove a Namespace from Supervisor Cluster"   
            $StatusMsg = Undo-Namespace -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -namespace $wmNamespaceName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green; $ErrorMsg = '' } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove Embedded Harbour Registry from Supervisor Cluster
            Write-LogMessage -Type INFO -Message "Remove Embedded Harbour Registry from Supervisor Cluster" 
            $StatusMsg = Undo-Registry -Server $sddcManagerFqdn -User $sddcManagerUser -Pass $sddcManagerPass -Domain $wldSddcDomainName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove Supervisor Namespace
            Write-LogMessage -Type INFO -Message "Remove Supervisor Namespace" 
            $StatusMsg = Undo-Namespace -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -namespace $supervisorNamespace -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove Supervisor Cluster
            Write-LogMessage -Type INFO -Message "Remove Supervisor Cluster" 
            $StatusMsg = Undo-SupervisorCluster -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -cluster $wmClusterName -RunAsync -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove Content Library from vCenter Server
            Write-LogMessage -Type INFO -Message "Remove Content Library from vCenter Server" 
            $StatusMsg = Undo-ContentLibrary -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -contentLibraryName $contentLibraryName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove a Storage Policy that Uses the vSphere Tag
            Write-LogMessage -Type INFO -Message "Remove a Storage Policy that Uses the vSphere Tag"
            $StatusMsg = Undo-StoragePolicy -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -policyName $storagePolicy -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green; $ErrorMsg = '' } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove the Tag from the vSAN Datastore
            Write-LogMessage -Type INFO -Message "Remove the Tag from the vSAN Datastore"
            $StatusMsg = Undo-DatastoreTag -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -tagName $tagName -tagCategoryName $tagCategoryName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove a Route Map from the Tier-0 Gateway
            Write-LogMessage -Type INFO -Message "Remove a Route Map from the Tier-0 Gateway"
            $StatusMsg = Undo-RouteMap -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -tier0Gateway $wldTier0Gateway -routeMapName $wldRouteMapName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove a Route Map from the Tier-0 Gateway
            Write-LogMessage -Type INFO -Message "Remove a Route Map from the Tier-0 Gateway"
            $StatusMsg = Undo-PrefixList -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -tier0Gateway $wldTier0Gateway -prefixListName $wldPrefixListName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Remove a Network Segment
            Write-LogMessage -Type INFO -Message "Remove a Network Segment"
            $StatusMsg = Undo-NetworkSegment -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $wldSddcDomainName -segmentName $kubSegmentName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Removing Developer Ready Infrastrucutre from VMware Cloud Foundation Instance" -Colour Yellow
