Function Update-vRSLCMPSPack {
    <#
        .SYNOPSIS
        Refresh Product Support Packs and Install.

        .DESCRIPTION
        The Update-vRSLCMPSPack cmdlet refreshes the available Product Support Packs and installs the required version
        to VMware Aria Suite Lifecycle. The cmdlet connects to SDDC Manager using the -server, -user, and -password
        values.
        - Validates that network connectivity and authentication is possible to SDDC Manager
        - Validates that Aria Suite Lifecycle has been deployed in VCF-aware mode and retrieves its details
        - Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle

        .EXAMPLE
        Update-vRSLCMPSPack -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -psPack PSPACK6
        This example refreshes the available Product Support Packs and installs the required version to VMware Aria Suite Lifecycle.

        .PARAMETER server
        The fully qualified domain name of the SDDC Manager.

        .PARAMETER user
        The username to authenticate to the SDDC Manager.

        .PARAMETER pass
        The password to authenticate to the SDDC Manager.

        .PARAMETER psPack
        The Product Support Pack to install.
    #>

    Param (
        [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$server,
        [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$user,
        [Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$pass,
        [Parameter (Mandatory = $false)] [ValidateNotNullOrEmpty()] [String]$psPack
        [Parameter (Mandatory = $false)] [ValidateNotNullOrEmpty()] [String]$psPackFile
    )

    Try {
        if (Test-VCFConnection -server $server) {
            if (Test-VCFAuthentication -server $server -user $user -pass $pass) {
                if (($vcfVrslcmDetails = Get-vRSLCMServerDetail -fqdn $server -username $user -password $pass)) {
                    if (Test-vRSLCMConnection -server $vcfVrslcmDetails.fqdn) {
                        if (Test-vRSLCMAuthentication -server $vcfVrslcmDetails.fqdn -user $vcfVrslcmDetails.adminUser -pass $vcfVrslcmDetails.adminPass) {
                            if ($psPack) {
                                $request = Get-vRSLCMPSPack -checkOnline
                                Start-Sleep 3
                                Do { $getStatus = (Get-vRSLCMRequest $request.requestId).state } Until ($getStatus -ne "INPROGRESS")
                                if ($getStatus -eq "COMPLETED") {
                                    $allPsPacks = Get-vRSLCMPSPack
                                    $pspackId = ($allPsPacks | Where-Object { $_.fileName -like "*$psPack" }).pspackId
                                    if ($pspackId) {
                                        $vcenterDetails = Get-vRSLCMDatacenterVcenter -datacenterVmid (Get-vRSLCMDatacenter).dataCenterVmid
                                        $request = Start-vRSLCMSnapshot -vcenterFqdn $vcenterDetails.vCenterHost -vcenterName $vcenterDetails.vCenterName -username $vcenterDetails.vcUsername
                                        Start-Sleep 3
                                        Do { $getStatus = (Get-vRSLCMRequest $request.requestId).state } Until ($getStatus -ne "INPROGRESS")
                                        if ($getStatus -eq "COMPLETED") {
                                            Start-Sleep 3
                                            $request = Install-vRSLCMPSPack -pspackId $pspackId
                                            Do { $getStatus = (Get-vRSLCMRequest $request.requestId).state } Until ($getStatus -ne "INPROGRESS")
                                            Write-Output "Product Support Pack ($psPack) install started on VMware Aria Suite Lifecycle ($($vcfVrslcmDetails.fqdn)): SUCCESSFUL"
                                        } else {
                                            Write-Error "VMware Aria Suite Lifecycle Snapshot Task ($($getStatus.vmid)) finished with state ($($getStatus)): POST_VALIDATION_FAILED"
                                        }
                                    } else {
                                        Write-Warning "Product Support Pack ($psPack) not found or already installed in VMware Aria Suite Lifecycle"
                                    }
                                } else {
                                    Write-Error "VMware Aria Suite Lifecycle Product Support Pack Check Task ($($getStatus.vmid)) finished with state ($($getStatus)): POST_VALIDATION_FAILED"
                                }
                            }
                            if ($psPackFile) {
                                if (Test-Path -Path $psPackFile) {
                                    $request = Import-vRSLCMPSPack -psPackFile $psPackFile
                                    Start-Sleep 3
                                    Do { $getStatus = (Get-vRSLCMRequest $request.requestId).state } Until ($getStatus -ne "INPROGRESS")
                                    if ($getStatus -eq "COMPLETED") {
                                        Write-Output "Product Support Pack ($psPack) Import to VMware Aria Suite Lifecycle ($($vcfVrslcmDetails.fqdn)): SUCCESSFUL"
                                    } else {
                                        Write-Error "Product Support Pack ($psPack) Import to VMware Aria Suite Lifecycle ($($vcfVrslcmDetails.fqdn)): POST_VALIDATION_FAILED"
                                    }
                                } else {
                                    Write-Error "Unable to locate the Product Support Pack ($psPackFil): POST_VALIDATION_FAILED"
                                }
                            }
                        }
                    }
                }
            }
        }
    } Catch {
        Debug-ExceptionWriter -object $_
    }
}
Export-ModuleMember -Function Update-vRSLCMPSPack