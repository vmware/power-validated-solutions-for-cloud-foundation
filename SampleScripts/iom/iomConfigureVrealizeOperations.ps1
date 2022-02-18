<#
    .NOTES
    ===========================================================================
    Created by:  Gary Blake - Senior Staff Solutions Architect
    Date:   2021-12-15
    Copyright 2021 VMware, Inc.
    ===========================================================================
    .CHANGE_LOG

    - 1.0.001   (Gary Blake / 2022-02-16) - Added support for both VCF 4.3.x and VCF 4.4.x Planning and Prep Workbooks

    ===================================================================================================================
    .SYNOPSIS
    Configure Integration of vRealize Operations Manager for Intelligent Operations Management

    .DESCRIPTION
    The iomConfigureVrealizeOperations.ps1 provides a single script to configure the intergration of vRealize Operations Manager
    as defined by the Intelligent Operations Management Validated Solution

    .EXAMPLE
    iomConfigureVrealizeOperations.ps1 -sddcManagerFqdn sfo-vcf01.sfo.rainpole.io -sddcManagerUser administrator@vsphere.local -sddcManagerPass VMw@re1! -workbook F:\vvs\PnP.xlsx -filePath F:\vvs
    This example performs the deployment and configure of vRealize Operations Manager using the parameters provided within the Planning and Preparation Workbook
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
Write-LogMessage -Type INFO -Message "Starting the Process of Integration Configuration of vRealize Operations Manager Based on Intelligent Operations Management for VMware Cloud Foundation" -Colour Yellow
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

            $sddcDomainName                         = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value
            $sddcWldDomainName                      = $pnpWorkbook.Workbook.Names["wld_sddc_domain"].Value

            $collectorGroupName                     = $pnpWorkbook.Workbook.Names["mgmt_sddc_domain"].Value + "-remote-collectors"
            $defaultCollectorGroup                  = "Default collector group"
            $vropsIpList                            = $pnpWorkbook.Workbook.Names["xreg_vrops_virtual_ip"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodea_ip"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodeb_ip"].Value + "," + $pnpWorkbook.Workbook.Names["xreg_vrops_nodec_ip"].Value
            $vropsAdapterName                       = $pnpWorkbook.Workbook.Names["xreg_vrops_virtual_hostname"].Value
            $vropsrcIpList                          = $pnpWorkbook.Workbook.Names["region_vropsca_ip"].Value + "," + $pnpWorkbook.Workbook.Names["region_vropscb_ip"].Value
            $vropsrcAdapterName                     = $collectorGroupName

            $csvFile                                = "vrops-vcf-notifications.csv"
            if (!(Test-Path ($filePath + "\" + $csvFile) )) { Write-LogMessage -Type ERROR -Message "Unable to Find Notification CSV File: $csvFile, check details and try again" -Colour Red; Break } else { Write-LogMessage -Type INFO -Message "Found Notification CSV File: $csvFile" }

            # Connect vRealize Operations Manager to the VI Workload Domains in the First VMware Cloud Foundation Instance
            Write-LogMessage -Type INFO -Message "Connect vRealize Operations Manager to the VI Workload Domains in the First VMware Cloud Foundation Instance"
            $StatusMsg = Register-vROPSWorkloadDomain -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -status ENABLED -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Modify the vCenter Server Adapters for the First VMware Cloud Foundation Instance in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Modify the vCenter Server Adapters for the First VMware Cloud Foundation Instance in vRealize Operations Manager"
            $StatusMsg = Update-vROPSAdapterVcenter -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -collectorGroupName $collectorGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Modifing the vCenter Server Adapters for the First VMware Cloud Foundation Instance: SUCCESSFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Modifing the vCenter Server Adapters for the First VMware Cloud Foundation Instance, already modifed: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add NSX-T Data Center Adapters in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Add NSX-T Data Center Adapters in vRealize Operations Manager"
            $StatusMsg = Add-vROPSAdapterNsxt -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcDomainName -collectorGroupName $collectorGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vROPSAdapterNsxt -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -domain $sddcWldDomainName -collectorGroupName $collectorGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Install the SDDC Health Monitoring Solution in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Install the SDDC Health Monitoring Solution in vRealize Operations Manager"
            $StatusMsg = Enable-vROPSManagementPack -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPAss -packType "SDDC Health" -pakFile "F:\vvs\vmware-mpforsddchealth-8-1619468209785.pak" -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Rename the SDDC Health Adapters for the vRealize Operations Manager Analytics Cluster Nodes
            Write-LogMessage -Type INFO -Message "Rename the SDDC Health Adapters for the vRealize Operations Manager Analytics Cluster Nodes"
            $StatusMsg = Update-vROPSAdapterSddcHealth -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Renaming the SDDC Health Adapters for the vRealize Operations Manager: SUCCESSFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Renaming the SDDC Health Adapters for the vRealize Operations Manager, already performed: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add SDDC Health Adapters for the vRealize Operations Manager Remote Collector Nodes
            Write-LogMessage -Type INFO -Message "Add SDDC Health Adapters for the vRealize Operations Manager Remote Collector Nodes"
            $StatusMsg = Add-vROPSAdapterSddcHealth -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "Adding Adapter (SDDC Health Adapter Instance) for Remore Collectors to vRealize Operations Manager (xint-vrops01.rainpole.io): SUCCESSFUL" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message "Adding Adapter (SDDC Health Adapter Instance) for Remore Collectors to vRealize Operations Manager (xint-vrops01.rainpole.io), already performed: SKIPPED" -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Activate the Ping Management Pack in vRealize Operations Manager
            Write-LogMessage -Type INFO -Message "Activate the Ping Management Pack in vRealize Operations Manager"
            $StatusMsg = Register-vROPSManagementPack -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -state enable -packType Ping -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }

            # Add Ping Adapters for the vRealize Operations Manager Nodes
            Write-LogMessage -Type INFO -Message "Add Ping Adapters for the vRealize Operations Manager Nodes"
            $StatusMsg = Add-vROPSAdapterPing -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -addressList $vropsIpList -adapterName $vropsAdapterName -collectorGroupName $defaultCollectorGroup -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
            $StatusMsg = Add-vROPSAdapterPing -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -addressList $vropsrcIpList -adapterName $vropsrcAdapterName -collectorGroupName $collectorGroupName -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
    
            # Create Notifications in vRealize Operations Manager for VMware Cloud Foundation Issues
            Write-LogMessage -Type INFO -Message "Create Notifications in vRealize Operations Manager for VMware Cloud Foundation Issues"
            $StatusMsg = Import-vROPSNotification -server $sddcManagerFqdn -user $sddcManagerUser -pass $sddcManagerPass -csvPath ($filePath + "\" + $csvFile) -WarningAction SilentlyContinue -ErrorAction SilentlyContinue -WarningVariable WarnMsg -ErrorVariable ErrorMsg
            if ( $StatusMsg ) { Write-LogMessage -Type INFO -Message "$StatusMsg" } if ( $WarnMsg ) { Write-LogMessage -Type WARNING -Message $WarnMsg -Colour Magenta } if ( $ErrorMsg ) { Write-LogMessage -Type ERROR -Message $ErrorMsg -Colour Red }
        }
    }
}
Catch {
    Debug-CatchWriter -object $_
}