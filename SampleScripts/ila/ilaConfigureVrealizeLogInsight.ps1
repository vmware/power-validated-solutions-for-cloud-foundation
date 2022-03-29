# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:  Gary Blake - Senior Staff Solutions Architect
    Date:   2021-11-27
    Copyright 2021-2022 VMware, Inc.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.0.001   (Gary Blake / 2022-01-05) - Improved the connection handling when starting the script
    - 1.0.002   (Gary Blake / 2022-02-16) - Added support for both VCF 4.3.x and VCF 4.4.x Planning and Prep Workbooks

    ===================================================================================================================

    .SYNOPSIS
    Configure Integration of vRealize Log Insight for Intelligent Logging and Analytics

    .DESCRIPTION
    The ilaConfigureVrealizeLogInsight.ps1 provides a single script to configure the intergration of vRealize Log Insight as
    defined by the Intelligent Logging and Analytics Validated Solution

    .EXAMPLE
    ilaConfigureVrealizeLogInsight.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the integration configuration of vRealize Log Insight using the parameters provided within the Planning and Preparation Workbook
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
Write-LogMessage -Type INFO -Message "Starting the Process of Integration Configuration of vRealize Log Insight Based on Intelligent Logging and Analytics for VMware Cloud Foundation" -Colour Yellow
Write-LogMessage -Type INFO -Message "Setting up the log file to path $logfile"

Try {
    Write-LogMessage -Type INFO -Message "Checking Existance of Planning and Preparation Workbook: $workbook"
    if (!(Test-Path $workbook )) {
        Write-LogMessage -Type ERROR -Message "Unable to Find Planning and Preparation Workbook: $workbook, check details and try again" -Colour Red
        Break
    }
    else {
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
            if (($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.3.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.4.x")) {
                Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
                Break
            }

            $sddcDomainName             = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $sddcWldDomainName          = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value
            $domain                     = $pnpWorkbook.Workbook.Names["parent_dns_zone"].Value
            $subDomain                  = $pnpWorkbook.Workbook.Names["child_dns_zone"].Value
            $vmNameNode1                = $pnpWorkbook.Workbook.Names["xreg_wsa_nodea_hostname"].Value
            $vmNameNode2                = $pnpWorkbook.Workbook.Names["xreg_wsa_nodeb_hostname"].Value
            $vmNameNode3                = $pnpWorkbook.Workbook.Names["xreg_wsa_nodec_hostname"].Value
            $vmRootPass                 = $pnpWorkbook.Workbook.Names["vrslcm_xreg_env_password"].Value
            $vidmVmList                 = "$vmNameNode1.$domain","$vmNameNode2.$domain","$vmNameNode2.$domain"
            $photonVmList               = "$($pnpWorkbook.Workbook.Names["sddc_mgr_hostname"].Value).$subDomain","$($pnpWorkbook.Workbook.Names["xreg_vrslcm_hostname"].Value).$domain","$vmNameNode1.$domain","$vmNameNode2.$domain","$vmNameNode3.$domain"

            # Connect a VI Workload Domain to vRealize Log Insight
            Write-LogMessage -Type INFO -Message "Connect a VI Workload Domain to vRealize Log Insight"
            $StatusMsg = Register-vRLIWorkloadDomain -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -status ENABLED -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure the NSX Edge Nodes to Forward Log Events to vRealize Log Insight
            Write-LogMessage -Type INFO -Message "Configure the NSX Edge Nodes to Forward Log Events to vRealize Log Insight"
            $StatusMsg = Add-NsxtNodeProfileSyslogExporter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Configuring the NSX Edge Nodes to Forward Log Events to vRealize Log Insight for Workload Domain ($sddcDomainName): SUCCESSFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Configuring the NSX Edge Nodes to Forward Log Events to vRealize Log Insight for Workload Domain ($sddcWldDomainName), already exists: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-NsxtNodeProfileSyslogExporter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Configuring the NSX Edge Nodes to Forward Log Events to vRealize Log Insight for Workload Domain ($sddcWldDomainName): SUCCESSFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Configuring the NSX Edge Nodes to Forward Log Events to vRealize Log Insight for Workload Domain ($sddcWldDomainName), already exists: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Download, Install and Configure the vRealize Log Insight Agent on the Clustered Workspace ONE Access Nodes
            Write-LogMessage -Type INFO -Message "Download, Install and Configure the vRealize Log Insight Agent on the Clustered Workspace ONE Access Nodes"
            $StatusMsg = Install-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode1 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Install-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode2 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Install-vRLIPhotonAgent -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -vmName $vmNameNode3 -vmRootPass $vmRootPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Configure the vRealize Log Insight Agent Group for the Clustered Workspace ONE Access
            Write-LogMessage -Type INFO -Message "Configure the vRealize Log Insight Agent Group for the Clustered Workspace ONE Access"
            $StatusMsg = Add-vRLIAgentGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -agentGroupType wsa -criteria $vidmVmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            
            # Create a vRealize Log Insight Photon OS Agent Group for the Management Nodes
            Write-LogMessage -Type INFO -Message "Create a vRealize Log Insight Photon OS Agent Group for the Management Nodes"
            $StatusMsg = Add-vRLIAgentGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -agentGroupType photon -criteria $photonVmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
}
Catch {
    Debug-CatchWriter -object $_
}
