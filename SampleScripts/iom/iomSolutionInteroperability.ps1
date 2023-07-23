# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .NOTES
    ===================================================================================================================
    Created by:         Gary Blake - Senior Staff Solutions Architect
    Creation Date:      2022-10-11
                        Copyright (c) 2021-2023 VMware, Inc. All rights reserved.
    ===================================================================================================================
    .CHANGE_LOG

    - 1.1.000   (Gary Blake / 2023-07-25)   - Added Support for VCF 5.0.x Planning and Prep Workbook
                                            - Removed Support for VCF 4.3.x Planning and Prep Workbook
                                            - Improvements to message output

    ===================================================================================================================

    .SYNOPSIS
    Configure Solution Interoperability for Intelligent Operations Management

    .DESCRIPTION
    The iomSolutionInteroperability.ps1 provides a single script to implement the configuration of Solution
    Interoperability as defined by the Intelligent Operations Management for VMware Cloud Foundation validated
    solution.

    .EXAMPLE
    iomSolutionInteroperability.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx
    This example performs the configuration of Solution Interoperability using the parameters provided within the Planning and Preparation Workbook
#>

Param (
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerFqdn,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerUser,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcManagerPass,
    [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$workbook
)

# Define Reusable Parameters
$solutionName               = "Intelligent Operations Management for VMware Cloud Foundation"
$operationsProductName      = "vRealize Operations Manager"
$logsProductName            = "vRealize Log Insight"

Clear-Host; Write-Host ""

Start-SetupLogFile -Path $filePath -ScriptName $MyInvocation.MyCommand.Name
Write-LogMessage -Type INFO -Message "Starting the Process of Configuring Solution Interoperability for $solutionName" -Colour Yellow
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
            if (($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.4.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v4.5.x") -and ($pnpWorkbook.Workbook.Names["vcf_version"].Value -ne "v5.0.x")) {
                Write-LogMessage -type INFO -message "Planning and Prepatation Workbook Provided Not Supported" -colour Red 
                Break
            } else {
                Write-LogMessage -type INFO -message "Supported Planning and Preparation Workbook Provided. Version: $(($pnpWorkbook.Workbook.Names["vcf_version"].Value))"
            }

            $agentGroupName     = "Photon OS (IOM) - Appliance Agent Group"
            $vmList             = $pnpWorkbook.Workbook.Names["xreg_vrops_nodea_fqdn"].Value,$pnpWorkbook.Workbook.Names["xreg_vrops_nodeb_fqdn"].Value,$pnpWorkbook.Workbook.Names["xreg_vrops_nodec_fqdn"].Value ,$pnpWorkbook.Workbook.Names["region_vropsca_fqdn"].Value,$pnpWorkbook.Workbook.Names["region_vropscb_fqdn"].Value

            if ((Get-VCFvRLI).status -eq "ACTIVE") {
                Write-LogMessage -Type INFO -Message "Configure Integration with $logsProductName" -Colour Green

                # Create a vRealize Log Insight Photon OS Agent Group for the vRealize Operations Manager Nodes
                Write-LogMessage -Type INFO -Message "Attempting to Create a $logsProductName Photon OS Agent Group for the $operationsProductName Nodes"
                $StatusMsg = Add-vRLIAgentGroup -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -agentGroupType photon -agentGroupName $agentGroupName -criteria $vmList -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
                if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" -Colour Green } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            } else {
                Write-LogMessage -Type INFO -Message "Configure Integration with $logsProductName, Not Installed: SKIPPED" -Colour Cyan
            }
        }
    }
} Catch {
    Debug-CatchWriter -object $_
}

Write-LogMessage -Type INFO -Message "Finishing the Process of Configuring Solution Interoperability for $solutionName" -Colour Yellow