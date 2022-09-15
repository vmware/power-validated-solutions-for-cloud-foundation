# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<#
    .SYNOPSIS
    Generate Password Policy Report and configure Password Policies 

    .DESCRIPTION
    The passwordPolicyManager.ps1 provides a single script to generate a Password Policy Report for audit purposes and to 
	configure password policies based on a standard common policies configuration.   

	.EXAMPLE
	passwordPolicyManager.ps1 -sddcFqdn sfo-vcf01.sfo.rainpole.io -sddcUser administrator@vsphere.local -sddcPass VMw@re1! -sddcDomain sfo-m01 -wsaFqdn sfo-wsa01.sfo.rainpole.io -wsaUser admin -wsaPass VMw@re1! -outputFile ".\sfo-m01_domain_pp_report.json" -commonPolicyFile ".\standardConfigure.json" -publishJSON
	Generates a Password Policy Report to a JSON file based on the -outputFile parameter for the provided Workload Domain containing all ESXi hosts, vCenter Server, vCenter Single Sign-On, NSX Manager, NSX Edge, and Workspace ONE Access nodes and the highlights the differences between the policies collected against a common policy file based on the -commonPolicyFile parameter.

    .EXAMPLE
    passwordPolicyManager.ps1 -sddcFqdn sfo-vcf01.sfo.rainpole.io -sddcUser administrator@vsphere.local -sddcPass VMw@re1! -sddcDomain sfo-m01 -wsaFqdn sfo-wsa01.sfo.rainpole.io -wsaUser admin -wsaPass VMw@re1! -outputFile ".\sfo-m01_domain_pp_report.html" -publishHTML
    Generates a Password Policy Report to a HTML file based on the -outputFile parameter for the provided Workload Domain containing all ESXi hosts, vCenter Server, vCenter Single Sign-On, NSX Manager, NSX Edge, and Workspace ONE Access nodes.
	
	.EXAMPLE
    passwordPolicyManager.ps1 -sddcFqdn sfo-vcf01.sfo.rainpole.io -sddcUser administrator@vsphere.local -sddcPass VMw@re1! -sddcDomain sfo-m01 -wsaFqdn sfo-wsa01.sfo.rainpole.io -wsaUser admin -wsaPass VMw@re1! -outputFile ".\sfo-m01_domain_pp_report.html" -commonPolicyFile ".\standardConfigure.json" -publishHTML
    Generates a Password Policy Report to a HTML file based on the -outputFile parameter for the provided Workload Domain containing all ESXi hosts, vCenter Server, vCenter Single Sign-On, NSX Manager, NSX Edge. and Workspace ONE Access nodes as well as highlights the differences between the policies collected against a common policy file based on the -commonPolicyFile parameter.

	.EXAMPLE
	passwordPolicyManager.ps1 -sddcFqdn sfo-vcf01.sfo.rainpole.io -sddcUser administrator@vsphere.local -sddcPass VMw@re1! -sddcDomain sfo-m01 -wsaFqdn sfo-wsa01.sfo.rainpole.io -wsaUser admin -wsaPass VMw@re1! -commonPolicyFile ".\standardConfigure.json" -applyPasswordPolicy
	Configures password policies as defined by the common policy file based on the -commonPolicyFile parameter for all ESXi hosts, vCenter Server, vCenter Single Sign-On, NSX Manager, NSX Edge, and Workspace ONE Access nodes for a given Workload Domain.

	.EXAMPLE
    passwordPolicyManager.ps1 -sddcFqdn sfo-vcf01.sfo.rainpole.io -sddcUser administrator@vsphere.local -sddcPass VMw@re1! -sddcDomain sfo-w01 -ssoFqdn sfo-m01-vc01.sfo.rainpole.io -ssoUser administrator@vsphere.local -ssoPass VMw@re1! -wsaFqdn sfo-wsa01.sfo.rainpole.io -wsaUser admin -wsaAdminPass VMw@re1! -outputFile ".\sfo-m01_domain_pp_report.html" -publishHTML
    Generates a Password Policy Report to a HTML file based on the -outputFile parameter for the provided Workload Domain containing all ESXi hosts, vCenter Server, NSX Manager, NSX Edge, Workspace ONE Access nodes, and a vCenter Single Sign-On external to the provided Workload Domain.
#>

Param (
	[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcFqdn,
	[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcUser,
	[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcPass,
	[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$sddcDomain,
	[Parameter (mandatory = $false)] [String]$ssoFqdn,
	[Parameter (mandatory = $false)] [String]$ssoUser,
	[Parameter (mandatory = $false)] [String]$ssoPass,
	[Parameter (mandatory = $false)] [String]$wsaFqdn,
	[Parameter (mandatory = $false)] [String]$wsaUser,
	[Parameter (mandatory = $false)] [String]$wsaPass,
	[Parameter (mandatory = $false)] [String]$commonPolicyFile,
	[Parameter (mandatory = $false)] [String]$outputFilePath,
	[Parameter (mandatory = $false)] [Switch]$publishHTML = $false,
	[Parameter (mandatory = $false)] [Switch]$publishJSON = $false,
	[Parameter (mandatory = $false)] [Switch]$driftOnly = $false,
	[Parameter (mandatory = $false)] [Switch]$applyPasswordPolicy = $false
)

################ Perform Prerequisite Check ####################

Function checkingRequireModules {
	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$moduleName,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$moduleVersion
	)
	
	if (-Not (Get-module | Where-Object { $_.Name -eq $moduleName -And [version]$_.Version -ge [version]$moduleVersion })) {
		if (-Not (Get-InstalledModule -Name $moduleName -MinimumVersion $moduleVersion -ErrorAction Ignore)) {
			if (-Not (Get-InstalledModule -Name $moduleName -ErrorAction Ignore)) {
				Write-Output "$moduleName module not installed."
				Write-Output "Use the command 'Install-Module -Name $moduleName -MinimumVersion $moduleVersion' to install from the PS Gallery"
				return $false
			} else {
				Write-Output "$moduleName does not meet the minimum version required: $moduleVersion"
				Write-Output "Use the command 'Update-Module -Name $moduleName' to update module to the latest version from the PS Gallery."
				return $false
			}
		} else {
			Write-Output "$moduleName module with minimum version $moduleVersion available, but not imported."
			Write-Output "Importing $moduleName version $moduleVersion ..."
			Import-Module $moduleName
			if (-Not (Get-module | Where-Object { $_.Name -eq $moduleName -And [version]$_.Version -ge [version]$moduleVersion })) {
				Write-Output "Error: importing $moduleName"
				Write-Output "Use the command 'Import-Module $moduleName' to manually import the module."
				return $false
			} else {
				Write-Output "$moduleName $moduleVersion successfully imported."
				return $true
			}
		}
	} else {
		Write-Output "Minimum required version of $moduleName found."
		return $true
	}
}

# PowerShell modules required to run the script
$requireModuleList = @(
    [pscustomobject]@{ Module='PowerValidatedSolutions';Version='1.8.0' }
	[pscustomobject]@{ Module='PowerVCF';Version='2.2.0' }
)

# Check if required modules have been imported

$errorModule = $false

Write-Output "Checking Required Modules"
foreach ($moduleItem in $requireModuleList) {
	$result = checkingRequireModules -moduleName $moduleItem.Module -moduleVersion $moduleItem.Version
	foreach ($line in $result) {
		if ($line -eq $false) {
			$errorModule = $true
		} elseif ($line -eq $true) {
		} else {
		Write-Output $line
		}
	}
}
if ($errorModule) {
	Write-Warning "Required PowerShell modules not found. Review messages messages and resolve before proceeding."
	Exit
}

################ Perform Initialization ####################

# Initialize Script Variables
$ppmVariables = New-Object -TypeName psobject
$ppmVariables | Add-Member -notepropertyname "sddcManagerFqdn" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "sddcManagerUser" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "sddcManagerPass" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "sddcDomainName" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "esxiCluster" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "ssoServerFqdn" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "ssoServerUser" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "ssoServerPass" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "skipWSA" -notepropertyvalue $false
$ppmVariables | Add-Member -notepropertyname "wsaFqdn" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "wsaAdminUser" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "wsaAdminPass" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "skipDocComparison" -notepropertyvalue $false
$ppmVariables | Add-Member -notepropertyname "commonPolicyFilePath" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "outputFilePath" -notepropertyvalue ""
$ppmVariables | Add-Member -notepropertyname "standardConfiguration" -notepropertyvalue "null"
$ppmVariables | Add-Member -notepropertyname "isEnvDetailSet" -notepropertyvalue $false

$ppmStandardConfigValues = New-Object System.Collections.Generic.List[System.Object]
$ppmEnvironmentalDetails = New-Object System.Collections.Generic.List[System.Object]

# Initialize Script Log File
Start-SetupLogFile -Path $PSScriptRoot -ScriptName $MyInvocation.MyCommand.Name

################ Perform Parameters variable Check ####################

Try {
	# Test SDDC Manager connection
	Write-LogMessage -Type INFO -Message "Testing connection to SDDC Manager server." -Colour Yellow
	$checkServer = Test-Connection -ComputerName $sddcFqdn -Quiet -Count 1
	if ($checkServer -eq "True") {
		$testConnection = Request-VCFToken -fqdn $sddcFqdn -username $sddcUser -password $sddcPass -WarningVariable WarnMsg -ErrorVariable testError
		if ($testError) {
			Write-LogMessage -Type ERROR -Message "Testing a connection to server $sddcFqdn failed. Please check your details and try again." -Colour Red
			Exit
		} else {
			# Test SDDC workload domain exists
			$workloadDomainExists = Get-VCFWorkloadDomain -name $sddcDomain
			if ($workloadDomainExists) {
				Write-LogMessage -Type INFO -Message "Testing Completed Successfully" -Colour Yellow
			} else {
				Write-LogMessage -Type ERROR -Message "Workload Domain $sddcDomain not found. Please check your details and try again." -Colour Red
				Exit
			}
		}
	} else {
		Write-LogMessage -Type ERROR -Message "Testing a connection to server $server failed. Please check your details and try again." -Colour Red
		Exit
	}
	
	# Setting variable
	$ppmVariables.sddcManagerFqdn = $sddcFqdn
	$ppmVariables.sddcManagerUser = $sddcUser
	$ppmVariables.sddcManagerPass = $sddcPass
	$ppmVariables.sddcDomainName = $sddcDomain
	
	# Retrieving vCenter SSO details 
	if ($ssoFqdn -and $ssoUser -and $ssoPass) {
		$ppmVariables.ssoServerFqdn = $ssoFqdn
		$ppmVariables.ssoServerUser = $ssoUser
		$ppmVariables.ssoServerPass = $ssoPass
	} else {
		# Retrieving vCenter SSO details from SDDC Manager
		$vcenter = Get-vCenterServerDetail -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName
		$ppmVariables.ssoServerFqdn = $vcenter.fqdn
		$ppmVariables.ssoServerUser = $vcenter.ssoAdmin
		$ppmVariables.ssoServerPass = $vcenter.ssoAdminPass
	}
	
	# Retrieving Workspace ONE Access details 
	if ($wsaFqdn -and $wsaUser -and $wsaPass) {
		$ppmVariables.wsaFqdn = $wsaFqdn
		$ppmVariables.wsaAdminUser = $wsaUser
		$ppmVariables.wsaAdminPass = $wsaPass
	} else {
		Write-LogMessage -Type INFO -Message "Workspace ONE Access server details not provided. Workspace ONE Access will be skipped." -Colour Cyan
		$ppmVariables.skipWSA = $true
	}
	
	if ($commonPolicyFile) {
		$commonPolicyFile = Resolve-Path $commonPolicyFile
		if (Test-Path $commonPolicyFile) {
			Write-LogMessage -Type INFO -Message "$commonPolicyFile file found" -Colour Yellow
			$ppmVariables.commonPolicyFilePath = $commonPolicyFile
		} else {
			Write-LogMessage -Type ERROR -Message "$commonPolicyFile file not found" -Colour Red
			Exit
		}
	} else {
		Write-LogMessage -Type INFO -Message "Standard Configuration file not provided. Comparison reporting will be skipped." -Colour Cyan
		$ppmVariables.skipDocComparison = $true
	}
	if ($outputFilePath) {
		if ($driftOnly) {
			if (Split-Path -Path $outputFilePath -eq "") {
				$outputFilePathTimeStampDir = "."
			} else {
				$outputFilePathTimeStampDir = Split-Path -Path $outputFilePath
			}
			$outputFilePathTimeStampFile = Split-Path -Path $outputFilePath -Leaf
			if ((([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq "") -and ($publishHTML -eq $true)) {
				Write-LogMessage -Type INFO -Message "The file extension was not provided; save output file as a .html file." -Colour Yellow
				$outputFileExtension = ".html"
			} elseif (-Not((([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq ".html") -or (([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq ".htm")) -and ($publishHTML -eq $true)) {
				$outputFileExtension = [System.IO.Path]::GetExtension($outputFilePathTimeStampFile)
				Write-LogMessage -Type INFO -Message "The file extension ($outputFileExtension) does not match HTML file type; save output file as a .html file." -Colour Yellow
				$outputFileExtension = ".html"
			} elseif ((([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq "") -and ($publishJSON -eq $true)) {
				Write-LogMessage -Type INFO -Message "The file extension was not provided; save output file as a .json file." -Colour Yellow
				$outputFileExtension = ".json"
			} elseif (-Not(([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq ".json") -and ($publishJSON -eq $true)) {
				$outputFileExtension = [System.IO.Path]::GetExtension($outputFilePathTimeStampFile)
				Write-LogMessage -Type INFO -Message "The file extension ($outputFileExtension) does not match JSON file type; save output file as a .json file." -Colour Yellow
				$outputFileExtension = ".json"
			} else {
				$outputFileExtension = [System.IO.Path]::GetExtension($outputFilePathTimeStampFile)
			}
			$outputFilePathTimeStampFile = ([System.IO.Path]::GetFileNameWithoutExtension($outputFilePathTimeStampFile)) + "_" + (Get-Date -format yyyyMMdd_HHmmss) + "driftOnly" + $outputFileExtension
			$outputFilePathTimeStamp = Join-Path -Path $outputFilePathTimeStampDir -ChildPath $outputFilePathTimeStampFile
		} else {
			if ({ Split-Path -Path $outputFilePath } -eq "") {
				$outputFilePathTimeStampDir = "."
			} else {
				$outputFilePathTimeStampDir = Split-Path -Path $outputFilePath
			}
			$outputFilePathTimeStampFile = Split-Path -Path $outputFilePath -Leaf
			if ((([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq "") -and ($publishHTML -eq $true)) {
				Write-LogMessage -Type INFO -Message "The file extension was not provided; save output file as a .html file." -Colour Yellow
				$outputFileExtension = ".html"
			} elseif (-Not((([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq ".html") -or (([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq ".htm")) -and ($publishHTML -eq $true)) {
				$outputFileExtension = [System.IO.Path]::GetExtension($outputFilePathTimeStampFile)
				Write-LogMessage -Type INFO -Message "The file extension ($outputFileExtension) does not match HTML file type; save output file as a .html file." -Colour Yellow
				$outputFileExtension = ".html"
			} elseif ((([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq "") -and ($publishJSON -eq $true)) {
				Write-LogMessage -Type INFO -Message "The file extension was not provided; save output file as a .json file." -Colour Yellow
				$outputFileExtension = ".json"
			} elseif (-Not(([System.IO.Path]::GetExtension($outputFilePathTimeStampFile)) -eq ".json") -and ($publishJSON -eq $true)) {
				$outputFileExtension = [System.IO.Path]::GetExtension($outputFilePathTimeStampFile)
				Write-LogMessage -Type INFO -Message "The file extension ($outputFileExtension) does not match JSON file type; save output file as a .json file." -Colour Yellow
				$outputFileExtension = ".json"
			} else {
				$outputFileExtension = [System.IO.Path]::GetExtension($outputFilePathTimeStampFile)
			}
			$outputFilePathTimeStampFile = ([System.IO.Path]::GetFileNameWithoutExtension($outputFilePathTimeStampFile)) + "_" + (Get-Date -format yyyyMMdd_HHmmss) + $outputFileExtension
			$outputFilePathTimeStamp = Join-Path -Path $outputFilePathTimeStampDir -ChildPath $outputFilePathTimeStampFile
		}
		if (Test-Path $outputFilePathTimeStamp) {
			Write-LogMessage -Type ERROR -Message "$outputFilePathTimeStamp file exists." -Colour Red
			Exit
		} else {
			$ppmVariables.outputFilePath = $outputFilePathTimeStamp
		}
	}
}
Catch {
	Debug-ExceptionWriter -object $_
}

##################################################################################
####   Parsing through standard configuration files to extract common values #####
####   *importStandardConfigurations function will take in commonvalue file	 #####
####   check values ranges and parse through each product and produce 		 #####
####   $ppmStandardConfigValues (which contains all standard password	     #####
####   setting values.  													 #####
##################################################################################

Function parseProductTypeESXiConfiguration {

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$productConfiguration,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues
	)
	
	$esxiConfigTypeValues =  New-Object -TypeName psobject
	$esxiConfigTypeValues | Add-Member -notepropertyname "passwdExpInDays" -notepropertyvalue "Default" 
	$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMaxFailAttempts" -notepropertyvalue "Default"
	$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLengthFor1CharClass" -notepropertyvalue "disabled"
	$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLengthFor2CharClass" -notepropertyvalue "disabled"
	$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLengthFor3CharClass" -notepropertyvalue "disabled"
	$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLengthFor4CharClass" -notepropertyvalue "Default"
	$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumCharLengthForPhrase" -notepropertyvalue "disabled"
	foreach ($configuration in $productConfiguration.ESXi.PSObject.Properties) {
		if ($configuration.Name -eq "passwdMinimumLength") {
			$esxiConfigTypeValues.passwdMinimumLengthFor4CharClass = $configuration.Value
		} elseif ($esxiConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			$esxiConfigTypeValues.$($configuration.Name) = $configuration.Value
		} else {
			Write-LogMessage -Type ERROR -Message "Parameter $($configuration.Name) not found (ESXi)." -Colour Red
		}
	}
	foreach ($configuration in $productConfiguration.Default.PSObject.Properties) {
		if ($esxiConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			if ($esxiConfigTypeValues.$($configuration.Name) -eq "Default") {
				$esxiConfigTypeValues.$($configuration.Name) = $configuration.Value
			}
		}
		if ($configuration.Name -eq "passwdMinimumLength") {
			if ($esxiConfigTypeValues.passwdMinimumLengthFor4CharClass -eq "Default") {
				$esxiConfigTypeValues.passwdMinimumLengthFor4CharClass = $configuration.Value
			}
		}
	}
	$standardConfigValue = New-Object -TypeName psobject
	$standardConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "ESXi"
	$standardConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $esxiConfigTypeValues
	$ppmStandardConfigValues.Add($standardConfigValue)
}

Function parseProductTypeVCConfiguration{
	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$productConfiguration,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues
	)
	
	$VCConfigTypeValues =  New-Object -TypeName psobject
	$VCConfigTypeValues | Add-Member -notepropertyname "passwdExpInDays" -notepropertyvalue "Default" 
	$VCConfigTypeValues | Add-Member -notepropertyname "passwdNotifyEmail" -notepropertyvalue "Default"
	foreach ($configuration in $productConfiguration.VC.PSObject.Properties) {
		if ($VCConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			$VCConfigTypeValues.$($configuration.Name) = $configuration.Value
		} else {
			Write-LogMessage -Type ERROR -Message "Parameter ("$configuration.Name") not found (VC)." -Colour Red
		}
	}
	foreach ($configuration in $productConfiguration.Default.PSObject.Properties) {
		if ($VCConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			if ($VCConfigTypeValues.$($configuration.Name) -eq "Default") {
				$VCConfigTypeValues.$($configuration.Name) = $configuration.Value
			}
		}
	}
	$standardConfigValue = New-Object -TypeName psobject
	$standardConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "VC"
	$standardConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $VCConfigTypeValues
	$ppmStandardConfigValues.Add($standardConfigValue)
}

Function parseProductTypeSSOConfiguration{

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$productConfiguration,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues
	)

	$SSOConfigTypeValues =  New-Object -TypeName psobject
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdExpInDays" -notepropertyvalue "Default" 
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdHistoryRestriction" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLength" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdMaximumLength" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdMinUppercase" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdMinLowercase" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdMinAlphabetic" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdMinNumeric" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdMinSpecial" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdMaxConsecutiveIdenticalChar" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdMaxFailAttempts" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdAttemptsIntervalInSec" -notepropertyvalue "Default"
	$SSOConfigTypeValues | Add-Member -notepropertyname "passwdUnlockIntervalInSec" -notepropertyvalue "Default"
	foreach ($configuration in $productConfiguration.SSO.PSObject.Properties) {
		if ($SSOConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			$SSOConfigTypeValues.$($configuration.Name) = $configuration.Value
		} else {
			Write-LogMessage -Type ERROR -Message "Parameter ("$configuration.Name") not found (SSO)." -Colour Red
		}
	}
	foreach ($configuration in $productConfiguration.Default.PSObject.Properties) {
		if ($SSOConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			if ($SSOConfigTypeValues.$($configuration.Name) -eq "Default") {
				$SSOConfigTypeValues.$($configuration.Name) = $configuration.Value
			}
		}
	}
	$standardConfigValue = New-Object -TypeName psobject
	$standardConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "SSO"
	$standardConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $SSOConfigTypeValues
	$ppmStandardConfigValues.Add($standardConfigValue)
}

Function parseProductTypeNSXMgrConfiguration {

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$productConfiguration,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues
	)

	$NSXMgrConfigTypeValues =  New-Object -TypeName psobject
	$NSXMgrConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLength" -notepropertyvalue "Default" 
	$NSXMgrConfigTypeValues | Add-Member -notepropertyname "apiPasswdMaxFailAttempts" -notepropertyvalue "Default"
	$NSXMgrConfigTypeValues | Add-Member -notepropertyname "apiPasswdMaxFailIntervalInSec" -notepropertyvalue "Default"
	$NSXMgrConfigTypeValues | Add-Member -notepropertyname "apiPasswdUnlockIntervalInSec" -notepropertyvalue "Default"
	$NSXMgrConfigTypeValues | Add-Member -notepropertyname "cliPasswdMaxFailAttempts" -notepropertyvalue "Default"
	$NSXMgrConfigTypeValues | Add-Member -notepropertyname "cliPasswdMaxFailIntervalInSec" -notepropertyvalue "Default"
	foreach ($configuration in $productConfiguration.NSXMgr.PSObject.Properties) {
		if ($NSXMgrConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			$NSXMgrConfigTypeValues.$($configuration.Name) = $configuration.Value
		} else {
			Write-LogMessage -Type ERROR -Message "Parameter ("$configuration.Name") not found (NSXEdge)." -Colour Red
		}
	}
	foreach ($configuration in $productConfiguration.Default.PSObject.Properties) {
		if ($NSXMgrConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			if ($NSXMgrConfigTypeValues.$($configuration.Name) -eq "Default") {
				$NSXMgrConfigTypeValues.$($configuration.Name) = $configuration.Value
			}
		}
		if ($NSXMgrConfigTypeValues.psobject.properties.match($("api"+$($configuration.Name))).Count) {
			if ($NSXMgrConfigTypeValues.$($("api"+$($configuration.Name))) -eq "Default") {
				$NSXMgrConfigTypeValues.$($("api"+$($configuration.Name))) = $configuration.Value
			}
		}
		if ($NSXMgrConfigTypeValues.psobject.properties.match($("cli"+$($configuration.Name))).Count) {
			if ($NSXMgrConfigTypeValues.$($("cli"+$($configuration.Name))) -eq "Default") {
				$NSXMgrConfigTypeValues.$($("cli"+$($configuration.Name))) = $configuration.Value
			}
		}
	}
	$standardConfigValue = New-Object -TypeName psobject
	$standardConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "NSXMgr"
	$standardConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $NSXMgrConfigTypeValues
	$ppmStandardConfigValues.Add($standardConfigValue)
}

Function parseProductTypeNSXEdgeConfiguration {

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$productConfiguration,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues
	)

	$NSXEdgeConfigTypeValues =  New-Object -TypeName psobject
	$NSXEdgeConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLength" -notepropertyvalue "Default" 
	$NSXEdgeConfigTypeValues | Add-Member -notepropertyname "cliPasswdMaxFailAttempts" -notepropertyvalue "Default"
	$NSXEdgeConfigTypeValues | Add-Member -notepropertyname "cliPasswdMaxFailIntervalInSec" -notepropertyvalue "Default"
	foreach ($configuration in $productConfiguration.NSXEdge.PSObject.Properties) {
		if ($NSXEdgeConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			$NSXEdgeConfigTypeValues.$($configuration.Name) = $configuration.Value
		} else {
			Write-LogMessage -Type ERROR -Message "Parameter ("$configuration.Name") not found (NSXEdge)." -Colour Red
		}
	}
	foreach ($configuration in $productConfiguration.Default.PSObject.Properties) {
		if ($NSXEdgeConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			if ($NSXEdgeConfigTypeValues.$($configuration.Name) -eq "Default") {
				$NSXEdgeConfigTypeValues.$($configuration.Name) = $configuration.Value
			}
		}
		if ($NSXEdgeConfigTypeValues.psobject.properties.match($("cli"+$($configuration.Name))).Count) {
			if ($NSXEdgeConfigTypeValues.$($("cli"+$($configuration.Name))) -eq "Default") {
				$NSXEdgeConfigTypeValues.$($("cli"+$($configuration.Name))) = $configuration.Value
			}
		}
	}
	$standardConfigValue = New-Object -TypeName psobject
	$standardConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "NSXEdge"
	$standardConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $NSXEdgeConfigTypeValues
	$ppmStandardConfigValues.Add($standardConfigValue)
}

Function parseProductTypeWSAConfiguration {

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$productConfiguration,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues
	)

	$WSAConfigTypeValues =  New-Object -TypeName psobject
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdExpInDays" -notepropertyvalue "Default" 
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdHistoryRestriction" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLength" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdMinUppercase" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdMinLowercase" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdMinNumeric" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdMinSpecial" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdMaxConsecutiveIdenticalChar" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdMaxPreviousCharactersReused" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdMaxFailAttempts" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdAttemptsIntervalInMins" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdUnlockIntervalInMins" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "tempPasswdLifetimeInHour" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdExpReminderInDay" -notepropertyvalue "Default"
	$WSAConfigTypeValues | Add-Member -notepropertyname "passwdExpReminderNotificationFrequencyInDay" -notepropertyvalue "Default"
	foreach ($configuration in $productConfiguration.WSA.PSObject.Properties) {
		if ($WSAConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			$WSAConfigTypeValues.$($configuration.Name) = $configuration.Value
		} else {
			Write-LogMessage -Type ERROR -Message "Parameter ("$configuration.Name") not found (WSA)." -Colour Red
		}
	}
	foreach ($configuration in $productConfiguration.Default.PSObject.Properties) {
		if ($WSAConfigTypeValues.psobject.properties.match($configuration.Name).Count) {
			if ($WSAConfigTypeValues.$($configuration.Name) -eq "Default") {
				$WSAConfigTypeValues.$($configuration.Name) = $configuration.Value
			}
		}
	}
	$standardConfigValue = New-Object -TypeName psobject
	$standardConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "WSA"
	$standardConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $WSAConfigTypeValues
	$ppmStandardConfigValues.Add($standardConfigValue)
}

Function checkRange() {

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$name,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [string]$value,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [int]$minRange,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [int]$maxRange,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [Bool]$required
	)

	if (($value -eq "Null") -and ($required -eq $true)) {
		Write-LogMessage -Type ERROR -Message "$name variable has not been configured. Please check the standard configuration JSON configuration file."  -Colour Red
		return $false
	} elseif (($value -lt $minRange) -or ($value -gt $maxRange)) {
		Write-LogMessage -Type ERROR -Message "The recommended range for $name should be between $minRange and $maxRange.(current value is $value)"  -Colour Red
		return $false
	}
	else {
		return $true
	}
}

Function checkEmailString() {

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$name,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$address,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [Bool]$required
	)
	
	if (($address -eq "Null") -and ($required -eq $true)) {
		Write-LogMessage -type ERROR -Message "$name variable has not been configured. Please check the standard configuration JSON configuration file." -Colour Red
		return $false
	}
	$checkStatement = $address -match "^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
	if ($checkStatement -eq $true) {
		return $true
	} else {
		Write-LogMessage -Type ERROR -Message "Please input a validate email address for" $name "in the standard configuration JSON configuration file."  -Colour Red
		return $false
	}
}

Function importStandardConfigurations {
	<#
		.SYNOPSIS
        Imports the standard configuration JSON into a consumable array to feed into various functions.
	#>
	
	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$ppmVariables,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmEnvironmentalDetails
	)
	
	# Checking if file exists
	if (Test-Path $ppmVariables.commonPolicyFilePath) {
		$ppmStandardConfiguration = Get-Content -Path $ppmVariables.commonPolicyFilePath -Raw | ConvertFrom-Json
	} else {
		Write-LogMessage -Type ERROR -Message $ppmVariables.commonPolicyFilePath+" file not found." -Colour Red
		Exit
	}
	
	$errorCount = 0;
	
	# Validating values
	$CommonValues = New-Object -TypeName psobject
	$CommonValues | Add-Member -notepropertyname "passwdExpInDays" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMinimumLength" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMinUppercase" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMinLowercase" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMinNumeric" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMinSpecial" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMaxConsecutiveIdenticalChar" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdHistoryRestriction" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdUnlockIntervalInSec" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMaxFailAttempts" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdAttemptsIntervalInSec" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMaxFailIntervalInSec" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdNotifyEmail" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMaximumLength" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMinAlphabetic" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdMaxPreviousCharactersReused" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdAttemptsIntervalInMins" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdUnlockIntervalInMins" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "tempPasswdLifetimeInHour" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdExpReminderInDay" -notepropertyvalue "Null"
	$CommonValues | Add-Member -notepropertyname "passwdExpReminderNotificationFrequencyInDay" -notepropertyvalue "Null"
	
	foreach ($configuration in $ppmStandardConfiguration.Default.PSObject.Properties) {
		if ($CommonValues.psobject.properties.match($configuration.Name).Count) {
				$CommonValues.$($configuration.Name) = $configuration.Value
		}
	}
	$checkReturn = checkRange -name "passwdExpInDays" -value $CommonValues."passwdExpInDays" -minRange 30 -maxRange 99999 -required $true
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkRange -name "passwdMinimumLength" -value $CommonValues."passwdMinimumLength" -minRange 12 -maxRange 9999 -required $true
	if (!$checkReturn) {
		$passwdMinLen = 12
		$errorCount += 1
	} else {
		$passwdMinLen = $CommonValues."passwdMinimumLength"
	}
	$checkReturn = checkRange -name "passwdMinUppercase" -value $CommonValues."passwdMinUppercase" -minRange 1 -maxRange 9000 -required $true 
	if (!$checkReturn) {
		$passwdUpper = 1
		$errorCount += 1
	} else {
		$passwdUpper = $CommonValues."passwdMinUppercase"
	}
	$checkReturn = checkRange -name "passwdMinLowercase" -value $CommonValues."passwdMinLowercase" -minRange 1 -maxRange 9000 -required $true 
	if (!$checkReturn) { 
		$passwdLower = 
		$errorCount += 1
	} else {
		$passwdLower = $CommonValues."passwdMinLowercase"
	}
	$checkReturn = checkRange -name "passwdMinNumeric" -value $CommonValues."passwdMinNumeric" -minRange 1 -maxRange 9000 -required $true
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkRange -name "passwdMinSpecial" -value $CommonValues."passwdMinSpecial" -minRange 1 -maxRange 9000 -required $true
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkRange -name "passwdMaxConsecutiveIdenticalChar" -value $CommonValues."passwdMaxConsecutiveIdenticalChar" -minRange 1 -maxRange 9000 -required $true
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkRange -name "passwdHistoryRestriction" -value $CommonValues."passwdHistoryRestriction" -minRange 5 -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkRange -name "passwdUnlockIntervalInSec" -value $CommonValues."passwdUnlockIntervalInSec" -minRange 0 -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkRange -name "passwdMaxFailAttempts" -value $CommonValues."passwdMaxFailAttempts" -minRange 1 -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkRange -name "passwdAttemptsIntervalInSec" -value $CommonValues."passwdAttemptsIntervalInSec" -minRange 0 -maxRange 9999 -required $true 
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkEmailString -name "passwdNotifyEmail" -address $CommonValues."passwdNotifyEmail" -required $true 
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkRange -name "passwdMaximumLength" -value $CommonValues."passwdMaximumLength" -minRange $passwdMinLen -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1
	}
	$maxValue = [int]$passwdUpper + [int]$passwdLower
	$checkReturn = checkRange -name "passwdMinAlphabetic" -value $CommonValues."passwdMinAlphabetic" -minRange $maxValue -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1
	}
	$checkReturn = checkRange -name "passwdMaxPreviousCharactersReused" -value $CommonValues."passwdMaxPreviousCharactersReused" -minRange 0 -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1;
	}
	$checkReturn = checkRange -name "passwdAttemptsIntervalInMins" -value $CommonValues."passwdAttemptsIntervalInMins" -minRange 0 -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1;
	}
	$checkReturn = checkRange -name "passwdUnlockIntervalInMins" -value $CommonValues."passwdUnlockIntervalInMins" -minRange 0 -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1;
	}
	$checkReturn = checkRange -name "tempPasswdLifetimeInHour" -value $CommonValues."tempPasswdLifetimeInHour" -minRange 1 -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1;
	}
	$checkReturn = checkRange -name "passwdExpReminderInDay" -value $CommonValues."passwdExpReminderInDay" -minRange 1 -maxRange 9999 -required $true
	if (!$checkReturn) {
		$errorCount += 1;
	}
	$checkReturn = checkRange -name "passwdExpReminderNotificationFrequencyInDay" -value $CommonValues."passwdExpReminderNotificationFrequencyInDay" -minRange 1 -maxRange 9999 -required $true 
	if (!$checkReturn) {
		$errorCount += 1;
	}
	if ($errorCount -gt 0) {
		Write-LogMessage -Type ERROR -Message "There are errors in standard configuration JSON. Please see above for more details."  -Colour Red
		Write-LogMessage -Type ERROR -Message "Total error count = $errorCount" -Colour Red
		Exit
	}
	
	Write-LogMessage -type INFO -Message "Importing standard configuration setting from $($ppmVariables.commonPolicyFilePath)..."
	parseProductTypeESXiConfiguration -productConfiguration $ppmStandardConfiguration -ppmStandardConfigValues $ppmStandardConfigValues
	parseProductTypeVCConfiguration -productConfiguration $ppmStandardConfiguration -ppmStandardConfigValues $ppmStandardConfigValues
	parseProductTypeSSOConfiguration -productConfiguration $ppmStandardConfiguration -ppmStandardConfigValues $ppmStandardConfigValues
	parseProductTypeNSXMgrConfiguration -productConfiguration $ppmStandardConfiguration -ppmStandardConfigValues $ppmStandardConfigValues
	parseProductTypeNSXEdgeConfiguration -productConfiguration $ppmStandardConfiguration -ppmStandardConfigValues $ppmStandardConfigValues
	parseProductTypeWSAConfiguration -productConfiguration $ppmStandardConfiguration -ppmStandardConfigValues $ppmStandardConfigValues
	Write-LogMessage -type INFO -Message "Importing standard configuration setting from $($ppmVariables.commonPolicyFilePath) completed."
}

#############################################################################
####  Get-EnvironmentPasswordPolicyDetail will retrieve password policy #####
####  of each components under a workload domain.                       #####
#############################################################################

Function getEsxiPasswordPolicy {
	<#
		.SYNOPSIS
        Retrieves ESXi host password policy
    #>

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$server,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$user,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$pass,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$domain,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$cluster
	)
	
	# Construct Environment Object
	$passwordPolicyNodes = New-Object System.Collections.Generic.List[System.Object]
	$results = Get-EsxiPasswordPolicy -server $server -user $user -pass $pass -domain $domain -cluster $cluster
	foreach ($result in $results) {
		$esxiConfigTypeValues =  New-Object -TypeName psobject
		$esxiConfigTypeValues | Add-Member -notepropertyname "passwdExpInDays" -notepropertyvalue "Empty"
		$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMaxFailAttempts" -notepropertyvalue "Empty"
		$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLengthFor1CharClass" -notepropertyvalue "Empty"
		$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLengthFor2CharClass" -notepropertyvalue "Empty"
		$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLengthFor3CharClass" -notepropertyvalue "Empty"
		$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLengthFor4CharClass" -notepropertyvalue "Empty"
		$esxiConfigTypeValues | Add-Member -notepropertyname "passwdMinimumCharLengthForPhrase" -notepropertyvalue "Empty"

		# Parsing ESXi password policy string
		$result.PasswordQualityControl | Select-String -Pattern "^retry=(\d+)\s+min=(.+),(.+),(.+),(.+),(.+)" | Foreach-Object {$PasswdPolicyRetryValue, $PasswdPolicyMinValue1, $PasswdPolicyMinValue2, $PasswdPolicyMinValue3, $PasswdPolicyMinValue4, $PasswdPolicyMinValue5 = $_.Matches[0].Groups[1..6].Value}
		$esxiConfigTypeValues.passwdExpInDays = $result.PaswordMaxDays
		$esxiConfigTypeValues.passwdMaxFailAttempts = $PasswdPolicyRetryValue
		$esxiConfigTypeValues.passwdMinimumLengthFor1CharClass = $PasswdPolicyMinValue1
		$esxiConfigTypeValues.passwdMinimumLengthFor2CharClass = $PasswdPolicyMinValue2
		$esxiConfigTypeValues.passwdMinimumLengthFor3CharClass = $PasswdPolicyMinValue4
		$esxiConfigTypeValues.passwdMinimumLengthFor4CharClass = $PasswdPolicyMinValue5
		$esxiConfigTypeValues.passwdMinimumCharLengthForPhrase = $PasswdPolicyMinValue3

		$nodeConfigValue = New-Object -TypeName psobject
		$nodeConfigValue | Add-Member -notepropertyname "FQDN" -notepropertyvalue $result.fqdn
		$nodeConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "ESXi"
		$nodeConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $esxiConfigTypeValues
		$passwordPolicyNodes.Add($nodeConfigValue)
		Remove-Variable -Name nodeConfigValue
		Remove-Variable -Name esxiConfigTypeValues
	}
	return $passwordPolicyNodes
}

Function getVCServerPasswordPolicy {
	<#
		.SYNOPSIS
		Retrieve vCenter Server password policy
	#>

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$server,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$user,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$pass,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$domain
	)
	
	# Construct Environment Object
	$passwordPolicyNodes = New-Object System.Collections.Generic.List[System.Object]
	$VCConfigTypeValues =  New-Object -TypeName psobject
	$VCConfigTypeValues | Add-Member -notepropertyname "passwdExpInDays" -notepropertyvalue "Empty" 
	$VCConfigTypeValues | Add-Member -notepropertyname "passwdNotifyEmail" -notepropertyvalue "Empty"
	
	$result = Get-VCServerPasswordPolicy -server $server -user $user -pass $pass -domain $domain
	$VCConfigTypeValues.passwdNotifyEmail = $result.email
	$VCConfigTypeValues.passwdExpInDays = $result.max_days_between_password_change
	
	$nodeConfigValue = New-Object -TypeName psobject
	$nodeConfigValue | Add-Member -notepropertyname "FQDN" -notepropertyvalue $result.fqdn
	$nodeConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "VC"
	$nodeConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $VCConfigTypeValues
	$passwordPolicyNodes.Add($nodeConfigValue)
	return $passwordPolicyNodes
}

Function getSingleSignOnPasswordPolicy {
	<#
		.SYNOPSIS
        Retrieves vCenter Single Sign-On password policy
    #>

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$server,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$user,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$pass
	)
	
	# Construct Environment Object
	$passwordPolicyNodes = New-Object System.Collections.Generic.List[System.Object]
	
    Try {
		Write-LogMessage -Type INFO -Message "Retrieving vCenter Single Sign-On domain password policies." 
		$checkServer = Test-Connection -ComputerName $server -Quiet -Count 1
		if ($checkServer -eq "True") {
			Write-LogMessage -Type INFO -Message  "Attempting to connect to vCenter Single Sign-On domain server '$server'" 
			$mySSOConnection = Connect-SsoAdminServer -Server $server -User $user -Password $pass
			if ($mySSOConnection.Name -eq $server) {
				$configurationString = Get-SSOPasswordPolicy
				$configurationString2 = Get-SsoLockoutPolicy
				if ($configurationString -and $configurationString2) {
					$SSOTmpObject = @()
					$SSOTmpObject += [pscustomobject]@{
						"passwdExpInDays" = $configurationString.PasswordLifetimeDays
						"passwdHistoryRestriction" = $configurationString.ProhibitedPreviousPasswordsCount
						"passwdMinimumLength" = $configurationString.MinLength
						"passwdMaximumLength" = $configurationString.MaxLength
						"passwdMinUppercase" = $configurationString.MinUppercaseCount
						"passwdMinLowercase" = $configurationString.MinLowercaseCount
						"passwdMinAlphabetic" = $configurationString.MinAlphabeticCount
						"passwdMinNumeric" = $configurationString.MinNumericCount
						"passwdMinSpecial" = $configurationString.MinSpecialCharCount
						"passwdMaxConsecutiveIdenticalChar" = $configurationString.MaxIdenticalAdjacentCharacters
						"passwdMaxFailAttempts" = $configurationString2.MaxFailedAttempts
						"passwdAttemptsIntervalInSec" = $configurationString2.FailedAttemptIntervalSec
						"passwdUnlockIntervalInSec" = $configurationString2.AutoUnlockIntervalSec
					}
			
					$nodeConfigValue = New-Object -TypeName psobject
					$nodeConfigValue | Add-Member -notepropertyname "FQDN" -notepropertyvalue $server
					$nodeConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "SSO"
					$nodeConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue ($SSOTmpObject | Select-Object -Skip 0)
					$passwordPolicyNodes.Add($nodeConfigValue)
					Write-LogMessage -Type INFO -Message "Disconnecting from server '$server'"
					Disconnect-SsoAdminServer -Server $mySSOConnection | Out-Null
					return $passwordPolicyNodes	
				} else {
					Write-LogMessage -Type INFO -Message "Disconnecting from server '$server'" 
					Disconnect-SsoAdminServer -Server $mySSOConnection | Out-Null
					Write-LogMessage -Type ERROR -Message "Unable to retrieve password policy." -Colour Red
					Exit
				}
			} else {
				Write-LogMessage -Type ERROR -Message "Not connected to server $server due to an incorrect user name or password. Verify your credentials and try again." -Colour Red
				Exit
			}
		} else {
			Write-LogMessage -Type ERROR -Message "Testing a connection to server $server failed. Please check your details and try again." -Colour Red
			Exit
		}
	}
    Catch {
        Debug-ExceptionWriter -object $_
    }
}

Function getNsxtManagerPasswordPolicy {
	<#
		.SYNOPSIS	
		Retrieves NSX Manager password policy
	#>

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$server,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$user,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$pass
	)

	$passwordPolicyNodes = New-Object System.Collections.Generic.List[System.Object]
	$nsxtConfigTypeValues =  New-Object -TypeName psobject
	$nsxtConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLength" -notepropertyvalue "Empty"
	$nsxtConfigTypeValues | Add-Member -notepropertyname "apiPasswdMaxFailAttempts" -notepropertyvalue "Empty"
	$nsxtConfigTypeValues | Add-Member -notepropertyname "apiPasswdMaxFailIntervalInSec" -notepropertyvalue "Empty"
	$nsxtConfigTypeValues | Add-Member -notepropertyname "apiPasswdUnlockIntervalInSec" -notepropertyvalue "Empty"
	$nsxtConfigTypeValues | Add-Member -notepropertyname "cliPasswdMaxFailAttempts" -notepropertyvalue "Empty"
	$nsxtConfigTypeValues | Add-Member -notepropertyname "cliPasswdMaxFailIntervalInSec" -notepropertyvalue "Empty"
	$count = 0
	
    Try {
		$checkServer = Test-Connection -ComputerName $server -Quiet -Count 1
		if ($checkServer -eq "True") {
			while ($checkServer -le 2) {
				Write-LogMessage -Type INFO -Message "Attempting to connect to NSX Manager '$server'."
				$NSXToken = Request-NsxToken -fqdn $server -username $user -password $pass 
				if ($NSXToken) {
					Write-LogMessage -Type INFO -Message "Connected to NSX Manager '$server'"
					Write-LogMessage -Type INFO -Message "Retrieving password policy from NSX Manager '$server'."
					$response = Get-NsxtManagerAuthPolicy -nsxtManagerNode $server
					$nsxtConfigTypeValues.passwdMinimumLength = $response.minimum_password_length
					$nsxtConfigTypeValues.apiPasswdMaxFailAttempts = $response.api_max_auth_failures
					$nsxtConfigTypeValues.apiPasswdMaxFailIntervalInSec = $response.api_failed_auth_reset_period
					$nsxtConfigTypeValues.apiPasswdUnlockIntervalInSec = $response.api_failed_auth_lockout_period
					$nsxtConfigTypeValues.cliPasswdMaxFailAttempts = $response.cli_max_auth_failures
					$nsxtConfigTypeValues.cliPasswdMaxFailIntervalInSec = $response.cli_failed_auth_lockout_period    

					$nodeConfigValue = New-Object -TypeName psobject
					$nodeConfigValue | Add-Member -notepropertyname "FQDN" -notepropertyvalue $server
					$nodeConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "NSXMgr"
					$nodeConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $nsxtConfigTypeValues
					$passwordPolicyNodes.Add($nodeConfigValue)
					return $passwordPolicyNodes
				} else {
					if ($ErrorLog -match '"error_code":404') {
						$count += 1
						Write-LogMessage -Type WARNING -Message "Unable to submit request. Retry again in 20 secs (Try $count/3)." -Colour Yellow
						Start-Sleep -s 20
					} else {
						Write-LogMessage -Type ERROR -Message "Failed to obtain access token from NSX Manager '$server'. Please verify your credentials and try again." -Colour Red
						Exit
					}
				}
			}
			Write-LogMessage -Type ERROR -Message "Testing a connection to server $server failed. Please check your details and try again." -Colour Red
			Exit
		} else {
			Write-LogMessage -Type ERROR -Message "Testing a connection to server $server failed. Please check your details and try again." -Colour Red
			Exit
		}
    }
    Catch {
        Debug-ExceptionWriter -object $_
    }
	Finally {
		Write-LogMessage -Type INFO -Message "Retrieving NSX Manager '$server' password policies completed."
	}
}

Function getNsxtEdgeNodePasswordPolicy {
	<#
		.SYNOPSIS
        Retrieve NSX Edge Node password policy
    #>
	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$server,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$user,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$pass
	)

	$passwordPolicyNodes = New-Object System.Collections.Generic.List[System.Object]
	$count = 0

    Try {
		$checkServer = Test-Connection -ComputerName $server -Quiet -Count 1
		if ($checkServer -eq "True") {
			while ($checkServer -le 2) {
				Write-LogMessage -Type INFO -Message "Attempting to connect to NSX Edge '$server'."
				$NSXToken = Request-NsxToken -fqdn $server -username $user -password $pass 
				if ($NSXToken) {
					$nsxtEdgeNodes = (Get-NsxtEdgeCluster | Where-Object {$_.member_node_type -eq "EDGE_NODE"})
					foreach ($nsxtEdgeNode in $nsxtEdgeNodes.members) {
						$nsxtConfigTypeValues =  New-Object -TypeName psobject
						$nsxtConfigTypeValues | Add-Member -notepropertyname "transportNodeID" -notepropertyvalue "Empty"
						$nsxtConfigTypeValues | Add-Member -notepropertyname "passwdMinimumLength" -notepropertyvalue "Empty"
						$nsxtConfigTypeValues | Add-Member -notepropertyname "cliPasswdMaxFailAttempts" -notepropertyvalue "Empty"
						$nsxtConfigTypeValues | Add-Member -notepropertyname "cliPasswdMaxFailIntervalInSec" -notepropertyvalue "Empty"

						$response = Get-NsxtEdgeNodeAuthPolicy -nsxtManager $server -nsxtEdgeNodeID $nsxtEdgeNode.transport_node_id
						$nsxtConfigTypeValues.transportNodeID = $nsxtEdgeNode.transport_node_id
						$nsxtConfigTypeValues.passwdMinimumLength = $response.minimum_password_length
						$nsxtConfigTypeValues.cliPasswdMaxFailAttempts = $response.cli_max_auth_failures
						$nsxtConfigTypeValues.cliPasswdMaxFailIntervalInSec = $response.cli_failed_auth_lockout_period  

						$nsxtEdgeNodeAdds = Get-NsxtEdgeNode -transportNodeID $nsxtEdgeNode.transport_node_id
						$nodeConfigValue = New-Object -TypeName psobject
						$nodeConfigValue | Add-Member -notepropertyname "FQDN" -notepropertyvalue $nsxtEdgeNodeAdds.node_deployment_info.node_settings.hostname
						$nodeConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "NSXEdge"
						$nodeConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue $nsxtConfigTypeValues
						$passwordPolicyNodes.Add($nodeConfigValue)
						Remove-Variable -Name nodeConfigValue
						Remove-Variable -Name nsxtConfigTypeValues
					}
					return $passwordPolicyNodes
				} else {
					if ($ErrorLog -match '"error_code":404') {
						$count += 1
						Write-LogMessage -Type WARNING -Message "Unable to submit request. Retry again in 20 secs (Try $count/3)." -Colour Yellow
						Start-Sleep -s 20
					} else {
						Write-LogMessage -Type ERROR -Message "Failed to obtain access token from NSX Edge '$server'. Please verify your credentials and try again." -Colour Red
						Exit
					}
				}
			}
			Write-LogMessage -Type ERROR -Message "Failed to obtain access token from NSX Edge '$server'. Please verify your credentials and try again." -Colour Red
			Exit
		} else {
				Write-LogMessage -Type ERROR -Message "Testing a connection to NSX Edge $server failed. Please check your details and try again." -Colour Red
				Exit
		}
    }
    Catch {
        Debug-ExceptionWriter -object $_
    }
	Finally {
		Write-LogMessage -Type INFO -Message "Retrieving NSX Edge password policy completed."
	}
}

Function getWSAPasswordPolicyAll {
	<#
		.SYNOPSIS
		Retrieve Workspace ONE Access password policy

		.DESCRIPTION
		The Get-WSAPasswordPolicyAll cmdlet returns an custom object contains the current configured password policy for a Workpace ONE Access appliance. 
		- Validates that network connectivity is possible to the Workspace ONE Access appliance
		- Retrieve Workspace ONE Access password policy
	#>
	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$server,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$user,
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [String]$pass
	)
	
	$passwordPolicyNodes = New-Object System.Collections.Generic.List[System.Object]

	Try {
		if (Test-WSAConnection -server $server) {
			$WSAToken = Request-WSAToken -fqdn $server -user $user -pass $pass
			if ($WSAToken) {
				$wsaPasswordPolicy = Get-WSAPasswordPolicy | Select-Object * -ExcludeProperty _links
				$wsaPasswordLockout = Get-WSAPasswordLockout | Select-Object * -ExcludeProperty _links
		
				$wsaTmpObject = @()
				$wsaTmpObject += [pscustomobject]@{
				"passwdExpInDays" = [int]$wsaPasswordPolicy.passwordTtlInHours / 24
				"passwdHistoryRestriction" = $wsaPasswordPolicy.history
				"passwdMinimumLength" = $wsaPasswordPolicy.minLen
				"passwdMinUppercase" = $wsaPasswordPolicy.minUpper
				"passwdMinLowercase" = $wsaPasswordPolicy.minLower
				"passwdMinNumeric" = $wsaPasswordPolicy.minDigit
				"passwdMinSpecial" = $wsaPasswordPolicy.minSpecial
				"passwdMaxConsecutiveIdenticalChar" = $wsaPasswordPolicy.maxConsecutiveIdenticalCharacters
				"passwdMaxPreviousCharactersReused" = $wsaPasswordPolicy.maxPreviousPasswordCharactersReused
				"passwdMaxFailAttempts" = $wsaPasswordLockout.numAttempts
				"passwdAttemptsIntervalInMins" = $wsaPasswordLockout.attemptInterval
				"passwdUnlockIntervalInMins" = $wsaPasswordLockout.unlockInterval
				"tempPasswdLifetimeInHour" = $wsaPasswordPolicy.tempPasswordTtl
				"passwdExpReminderInDay" = [int64]$wsaPasswordPolicy.notificationThreshold / 86400000
				"passwdExpReminderNotificationFrequencyInDay" = [int64]$wsaPasswordPolicy.notificationInterval / 86400000
				}
				
				$nodeConfigValue = New-Object -TypeName psobject
				$nodeConfigValue | Add-Member -notepropertyname "FQDN" -notepropertyvalue $server
				$nodeConfigValue | Add-Member -notepropertyname "productType" -notepropertyvalue "WSA"
				$nodeConfigValue | Add-Member -notepropertyname "productAttributes" -notepropertyvalue ($wsaTmpObject | Select-Object -Skip 0)
				$passwordPolicyNodes.Add($nodeConfigValue)
				return $passwordPolicyNodes
			} else {
				Write-LogMessage -Type ERROR -Message "Failed to obtain access token from Workspace ONE Access server '$server'. Please verify your credentials and try again." -Colour Red
			}
		} else {
				Write-LogMessage -Type ERROR -Message "Testing a connection to Workspace ONE Access server $server failed. Please check your details and try again." -Colour Red
		}
    }
    Catch {
        Debug-ExceptionWriter -object $_
    }
}

Function getEnvironmentPasswordPolicyDetail {
	
	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$ppmVariables,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmEnvironmentalDetails
	)

	if ($ppmVariables.isEnvDetailSet -eq $false) {
		Write-LogMessage -type INFO -Message "Retrieving environment details... (this may take a while depending on the number of ESXi hosts)." -Colour Yellow
		
		# Retrieve ESXi host password policy details
		Write-LogMessage -type INFO -Message "Retrieving ESXi host password policies..."
		$vcenter = Get-vCenterServerDetail -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName
		$clusterID = Get-VCFWorkloadDomain -name $ppmVariables.sddcDomainName
		$ppmVariables.esxiCluster = $clusterID
		foreach ($cid in $ppmVariables.esxiCluster.clusters.id) {
			$cluster = Get-VCFCluster -id $cid
			$results = getEsxiPasswordPolicy -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName -cluster $cluster.name
			foreach ($result in $results) {
				$result.productAttributes | Add-Member -notepropertyname "driftAlarm" -notepropertyvalue ""
				$result.productAttributes | Add-Member -notepropertyname "driftMessage" -notepropertyvalue ""
				$ppmEnvironmentalDetails.Add($result)
			}
		}
		Write-LogMessage -type INFO -Message "Retrieving ESXi Hosts password policies completed."
		
		# Retrieve vCenter Server password policy details 
		Write-LogMessage -type INFO -Message "Retrieving vCenter Server instance..."
		$result = getVCServerPasswordPolicy -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName
		$result.productAttributes | Add-Member -notepropertyname "driftAlarm" -notepropertyvalue ""
		$result.productAttributes | Add-Member -notepropertyname "driftMessage" -notepropertyvalue ""
		$ppmEnvironmentalDetails.Add($result)
		Write-LogMessage -type INFO -Message "Retrieving vCenter Server instance completed."
		
		# Retrieve vCenter SSO password policy details

		$result = getSingleSignOnPasswordPolicy -server $ppmVariables.ssoServerFqdn -user $ppmVariables.ssoServerUser -pass $ppmVariables.ssoServerPass
		$result.productAttributes | Add-Member -notepropertyname "driftAlarm" -notepropertyvalue ""
		$result.productAttributes | Add-Member -notepropertyname "driftMessage" -notepropertyvalue ""
		$ppmEnvironmentalDetails.Add($result)
		
		# Retrieve NSX Manager password policy details
		$nsxtManagerDetails = Get-NsxtServerDetail -fqdn $ppmVariables.sddcManagerFqdn -username $ppmVariables.sddcManagerUser -password $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName -listNodes
		foreach ($nsxtManagerNode in $nsxtManagerDetails.nodes) {
			$result = getNsxtManagerPasswordPolicy  -server $nsxtManagerNode.fqdn -user $nsxtManagerDetails.adminUser -pass $nsxtManagerDetails.AdminPass
			$result.productAttributes | Add-Member -notepropertyname "driftAlarm" -notepropertyvalue ""
			$result.productAttributes | Add-Member -notepropertyname "driftMessage" -notepropertyvalue ""
			$ppmEnvironmentalDetails.Add($result)
		}	

		# Retrieve NSX Edge password policy details
		$results = getNsxtEdgeNodePasswordPolicy -server $nsxtManagerDetails.fqdn -user $nsxtManagerDetails.adminUser -pass $nsxtManagerDetails.AdminPass
		foreach ($result in $results) {
			$result.productAttributes | Add-Member -notepropertyname "driftAlarm" -notepropertyvalue ""
			$result.productAttributes | Add-Member -notepropertyname "driftMessage" -notepropertyvalue ""
			$ppmEnvironmentalDetails.Add($result)
		}

		# Retrieve WSA password policy details
		if ($ppmVariables.wsaFqdn -and $ppmVariables.wsaAdminUser -and $ppmVariables.wsaAdminPass) {
			Write-LogMessage -type INFO -Message "Retrieving Workspace ONE Access appliance password policy..."
			$result = getWSAPasswordPolicyAll -server $ppmVariables.wsaFqdn -user $ppmVariables.wsaAdminUser -pass $ppmVariables.wsaAdminPass
			$result.productAttributes | Add-Member -notepropertyname "driftAlarm" -notepropertyvalue ""
			$result.productAttributes | Add-Member -notepropertyname "driftMessage" -notepropertyvalue ""
			$ppmEnvironmentalDetails.Add($result)
			Write-LogMessage -type INFO -Message "Retrieving Workspace ONE Access appliance password policy completed."
		} else {
			Write-LogMessage -Type WARNING -Message "Workspace ONE Access appliance skipped. Login details are not provided." -Colour Yellow
		}

		$ppmVariables.isEnvDetailSet = $true
		Write-LogMessage -type INFO -Message "Retrieving environment details completed." -Colour Green
	}
}

################################################################################
####   Print current environment password policies settings as HTML file	####
################################################################################

Function exportReportHTML {

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$ppmVariables,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmEnvironmentalDetails,
		[Parameter (mandatory = $false)] [Switch]$docCompare = $false
	) 
		# Retrieving environmental details
	getEnvironmentPasswordPolicyDetail -ppmVariables $ppmVariables -ppmEnvironmentalDetails $ppmEnvironmentalDetails
	$count = 0
		# Addressing comparison reports
	if ($docCompare -eq $true) {
		foreach ($eachNode in $ppmEnvironmentalDetails) {
			foreach ($eachAttribute in $eachNode.productAttributes.PSObject.Properties){
				foreach ($product in $ppmStandardConfigValues) {
					if ($product.productType -eq $eachNode.productType) {
						if ($eachAttribute.Value -ne $null) {
							if ($eachAttribute.Value -ne $product.productAttributes.$($eachAttribute.Name)) {
								$eachAttribute.Value = "<font color=#DC143C><b>" + $eachAttribute.Value + "</b></font>["+$product.productAttributes.$($eachAttribute.Name)+"]"
								$count += 1
							}
						} else {
							$eachAttribute.Value = "<font color=#DC143C><b>NULL</b></font>["+$product.productAttributes.$($eachAttribute.Name)+"]"
							$count += 1
						}
					}
				}
			}
		}
	}

	# Prepare HTML header
	$htmlOutput = "<html><title>Password Policy Report</title><style type=" + '"text/css"' + ">.myTable { border-collapse:collapse; }.myTable td, .myTable th {text-align:center;padding:5px;border:1px solid #000;}</style><head><H1>Password Policy Report for the Workload domain <font color=#6495ED>$($ppmVariables.sddcDomainName)</font> </H1></head><body><br><H4><p>-Report Ran on <font color=#6495ED>" + (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss") + "</font> for the Workload domain <font color=#6495ED>$($ppmVariables.sddcDomainName)</font>"
	if ($docCompare -eq $false) {
		$htmlOutput = $htmlOutput + "</p></H4><br><H4><p><font color=#FFA500>Common Password Policy file path was not provided. Drift data not available.</font></p></H4>"
	} else {
		$htmlOutput = $htmlOutput + "</p></H4><br><p>Legend: drift data format <font color=#DC143C><i>Current Environment Value</i></font>[<i>standard Password Policy value</i>]</p>"
	}

	# Prepare ESXi section
	$htmlOutput = $htmlOutput + '<H3>ESXi Host Password Policy</h3><table class="myTable">'
	$tmpHtmlOutput = $ppmEnvironmentalDetails | Where-Object { $_.productType -match "ESXi" } | select-object -Property FQDN -ExpandProperty productAttributes | select-object FQDN,passwdExpInDays,passwdMaxFailAttempts,passwdMinimumLengthFor1CharClass,passwdMinimumLengthFor2CharClass,passwdMinimumLengthFor3CharClass,passwdMinimumLengthFor4CharClass,passwdMinimumCharLengthForPhrase | sort-object -Property FQDN | ConvertTo-Html -Fragment -As Table
	$htmlOutput += $tmpHtmlOutput

	# Prepare vCenter Server section
	$htmlOutput = $htmlOutput + '<H3>vCenter Server Password Policy</h3><table class="myTable">'
	$tmpHtmlOutput = $ppmEnvironmentalDetails | Where-Object { $_.productType -match "VC" } | select-object -Property FQDN -ExpandProperty productAttributes | select-object FQDN,passwdExpInDays,passwdNotifyEmail | sort-object -Property FQDN | ConvertTo-Html -Fragment -As Table
	$htmlOutput += $tmpHtmlOutput

	# Prepare vCenter SSO section
	$htmlOutput = $htmlOutput + '<H3>vCenter Single Sign-On Password Policy</H3><p><font color=#6495ED>SSO FQDN: ' + $ppmVariables.ssoServerFqdn + '</font></p><table class="myTable">'
	$tmpHtmlOutput = $ppmEnvironmentalDetails | Where-Object { $_.productType -match "SSO" } | select-object -ExpandProperty productAttributes | select-object -property * -ExcludeProperty FQDN,productType,driftAlarm,driftMessage | ConvertTo-Html -Fragment -As Table
	$htmlOutput += $tmpHtmlOutput

	# Prepare NSX Manager section
	$htmlOutput = $htmlOutput + '<H3>NSX Manager Password Policy</h3><table class="myTable">'
	$tmpHtmlOutput = $ppmEnvironmentalDetails | Where-Object { $_.productType -match "NSXMgr" } | select-object -Property FQDN -ExpandProperty productAttributes | select-object FQDN,passwdMinimumLength,apiPasswdMaxFailAttempts,apiPasswdMaxFailIntervalInSec,apiPasswdUnlockIntervalInSec,cliPasswdMaxFailAttempts,cliPasswdMaxFailIntervalInSec | sort-object -Property FQDN | ConvertTo-Html -Fragment -As Table
	$htmlOutput += $tmpHtmlOutput

	# Prepare NSX Edge section
	$htmlOutput = $htmlOutput + '<H3>NSX Edge Password Policy</h3><table class="myTable">'
	$tmpHtmlOutput = $ppmEnvironmentalDetails | Where-Object { $_.productType -match "NSXEdge" } | select-object -Property FQDN -ExpandProperty productAttributes | select-object FQDN,passwdMinimumLength,cliPasswdMaxFailAttempts,cliPasswdMaxFailIntervalInSec | sort-object -Property FQDN | ConvertTo-Html -Fragment -As Table
	$htmlOutput += $tmpHtmlOutput

	# Prepare Workspace ONE Access section
	if ($ppmVariables.skipWSA -eq $false){
		$htmlOutput = $htmlOutput + '<H3>Workspace ONE Access Password Policy</H3><p><font color=#6495ED>WSA FQDN: ' + $ppmVariables.wsaFqdn + '</font></p><table class="myTable">'
		$tmpHtmlOutput = $ppmEnvironmentalDetails | Where-Object { $_.productType -match "WSA" } | select-object -ExpandProperty productAttributes | select-object -property * -ExcludeProperty FQDN,productType,driftAlarm,driftMessage | ConvertTo-Html -Fragment -As Table
		$htmlOutput += $tmpHtmlOutput
	}
	else {
		$htmlOutput = $htmlOutput + '<H3>Workspace ONE Access Password Policy</h3><p><br><font color=>Workspace ONE Access skipped; no environmental details provided.</p>'
	}
	
	$htmlOutput = $htmlOutput.replace("<table>", "")
	$htmlOutput = $htmlOutput.replace("passwd", "passwd ")
	$htmlOutput = $htmlOutput.replace("&gt;", ">")
	$htmlOutput = $htmlOutput.replace("&lt;", "<")
	$htmlOutput = $htmlOutput.replace("<colgroup><col/><col/><col/></colgroup> ","")
	$htmlOutput = $htmlOutput + "</body></html>"
	$htmlOutput | out-File $ppmVariables.outputFilePath
	Write-LogMessage -type INFO -Message "$($ppmVariables.outputFilePath) report generated." -Colour Yellow
}

################################################################################
####   Print current environment password policies settings as JSON file	####
################################################################################

Function exportReportJSON {

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$ppmVariables,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmEnvironmentalDetails,
		[Parameter (mandatory = $false)] [Switch]$docCompare = $false,
		[Parameter (mandatory = $false)] [Switch]$onlyDrift = $false
	)

	$count = 0

	# Addressing comparison reports
	if ($docCompare -eq $true) {
		foreach ($eachNode in $ppmEnvironmentalDetails){
			$eachNode.productAttributes.driftAlarm = "Green"
			$eachNode.productAttributes.driftMessage = ""
			foreach ($eachAttribute in $eachNode.productAttributes.PSObject.Properties) {
				foreach ($product in $ppmStandardConfigValues) {
					if ($product.productType -eq $eachNode.productType) {
						if ($eachAttribute.Value -ne $null) {
							if (($eachAttribute.Value -ne $product.productAttributes.$($eachAttribute.Name)) -and ($eachAttribute.Name -ne "driftAlarm") -and ($eachAttribute.Name -ne "driftMessage") -and ($eachAttribute.Name -ne "transportNodeID")) {
								$eachNode.productAttributes.driftAlarm = "Red"
								if ($eachNode.productAttributes.driftMessage -eq "") {
									$eachNode.productAttributes.driftMessage = $eachAttribute.Name + "("+ $product.productAttributes.$($eachAttribute.Name) + ")"
								} else {
									$eachNode.productAttributes.driftMessage = $eachNode.productAttributes.driftMessage + ", " + $eachAttribute.Name + "("+ $product.productAttributes.$($eachAttribute.Name) + ")"
								}
								$count += 1
							}
						} else {
							$eachAttribute.Value = "NULL"
							$eachNode.productAttributes.driftAlarm = "Red"
							if ($eachNode.productAttributes.driftMessage -eq "") {
								$eachNode.productAttributes.driftMessage = $eachAttribute.Name + "("+ $product.productAttributes.$($eachAttribute.Name) + ")"
							} else {
								$eachNode.productAttributes.driftMessage = $eachNode.productAttributes.driftMessage + ", " + $eachAttribute.Name + "("+ $product.productAttributes.$($eachAttribute.Name) + ")"
							}
							$count += 1
						}
					}
				}
			}
		}
		if ($onlyDrift -eq $true) {
			$ppmEnvironmentalDetails | Where-Object { $_.productAttributes.driftAlarm -match "Red" } | ConvertTo-Json -depth 100 | Out-File $ppmVariables.outputFilePath
		} else {
			$ppmEnvironmentalDetails | ConvertTo-Json -depth 100 | Out-File $ppmVariables.outputFilePath
		}
	} else {
		$ppmEnvironmentalDetails | ConvertTo-Json -depth 100 | Out-File $ppmVariables.outputFilePath
	}
	Write-LogMessage -type INFO -Message "$($ppmVariables.outputFilePath) report generated." -Colour Yellow
}

################################################################################
####   Configure environment password policies settings from the 			####
####   standard configuration file. 										####
################################################################################
Function setEnvironmentPasswordPolicy {

	Param (
		[Parameter (Mandatory = $true)] [ValidateNotNullOrEmpty()] [psobject]$ppmVariables,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmStandardConfigValues,
		[Parameter (Mandatory = $true)] [AllowEmptyCollection()][System.Collections.Generic.List[System.Object]]$ppmEnvironmentalDetails
	)

	$count = 0
	foreach ($eachNode in $ppmEnvironmentalDetails){
		$eachNode.productAttributes.driftAlarm = "Green"
		$eachNode.productAttributes.driftMessage = ""
		foreach ($eachAttribute in $eachNode.productAttributes.PSObject.Properties) {
			foreach ($product in $ppmStandardConfigValues) {
				if ($product.productType -eq $eachNode.productType) {
					if ($eachAttribute.Value -ne $null) {
						if (($eachAttribute.Value -ne $product.productAttributes.$($eachAttribute.Name)) -and ($eachAttribute.Name -ne "driftAlarm") -and ($eachAttribute.Name -ne "driftMessage") -and ($eachAttribute.Name -ne "transportNodeID")){
							$eachNode.productAttributes.driftAlarm = "Red"
							$count += 1
						}
					} else {
						$eachAttribute.Value = "NULL"
						$eachNode.productAttributes.driftAlarm = "Red"
						$count += 1
					}
				}
			}
		}
	}
	# Getting vCenter Server details
	$vcenter = Get-vCenterServerDetail -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName
	if (!$ppmVariables.esxiCluster) {
		$clusterID = Get-VCFWorkloadDomain -name $ppmVariables.sddcDomainName
		$ppmVariables.esxiCluster = $clusterID
	}

	# Start setting the password policy
	# vCenter Server
	if ($ppmEnvironmentalDetails | Where-Object { ($_.productType -match "VC") -and ($_.productAttributes.driftAlarm -match "Red") } ) {
		$products = $ppmStandardConfigValues | Select-Object -Skip 0 | Where-Object -FilterScript { $_.productType -eq "VC" }
		$passwordTtlInDays = $products.productAttributes.passwdExpInDays
		$emailNotification = $products.productAttributes.passwdNotifyEmail
		Write-LogMessage -type INFO -Message "vCenter Server Appliance: Setting the password policy."
		Set-vCenterPasswordExpiration -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName -passwordExpires $true -email $emailNotification -maxDaysBetweenPasswordChange $passwordTtlInDays | Out-Null
		Write-LogMessage -type INFO -Message "vCenter Server Appliance: Completed setting the password policy."
	}
	
	# vCenter Single Sign-On
	if ($ppmEnvironmentalDetails | Where-Object { ($_.productType -match "SSO") -and ($_.productAttributes.driftAlarm -match "Red") } ) {
		$products = $ppmStandardConfigValues | Select-Object -Skip 0 | Where-Object -FilterScript {$_.productType -eq "SSO"}
		$passHistory = $products.productAttributes.passwdHistoryRestriction
		$minCharacterLength = $products.productAttributes.passwdMinimumLength
		$maxCharacterLength = $products.productAttributes.passwdMaximumLength
		$minNumericChar = $products.productAttributes.passwdMinNumeric
		$minSpecialChar = $products.productAttributes.passwdMinSpecial
		$minUppercaseChar = $products.productAttributes.passwdMinUppercase
		$minLowercaseChar = $products.productAttributes.passwdMinLowercase
		$maxConsecutiveIdenticalChar = $products.productAttributes.passwdMaxConsecutiveIdenticalChar
		if ([int]$products.productAttributes.passwdMinAlphabetic -lt [int]([int]$minUppercaseChar + [int]$minLowercaseChar)) {
			$minAlphabeticCount = [int]$minUppercaseChar + [int]$minLowercaseChar
		} else {
			$minAlphabeticCount = $products.productAttributes.passwdMinAlphabetic
		}
		$passwordTtlInDays = $products.productAttributes.passwdExpInDays
		$autoUnlockIntervalSec = $products.productAttributes.passwdUnlockIntervalInSec
		$failedAttemptIntervalSec = $products.productAttributes.passwdAttemptsIntervalInSec
		$numAttempts = $products.productAttributes.passwdMaxFailAttempts
		Write-LogMessage -type INFO -Message "vCenter Single Sign-On: Setting the password policy."
		Start-Sleep -s 5
		if ($ppmVariables.ssoServerFqdn -and $ppmVariables.ssoServerUser -and $ppmVariables.ssoServerPass) {
			Connect-SsoAdminServer -Server $ppmVariables.ssoServerFqdn -User $ppmVariables.ssoServerUser -Password $ppmVariables.ssoServerPass | Out-Null
		} else {
			Connect-SsoAdminServer -server $vcenter.fqdn -user $vcenter.ssoAdmin -pass $vcenter.ssoAdminPass
		}
		Get-SsoPasswordPolicy | Set-SsoPasswordPolicy -ProhibitedPreviousPasswordsCount $passHistory -MinLength $minCharacterLength -MaxLength $maxCharacterLength -MinNumericCount $minNumericChar -MinSpecialCharCount $minSpecialChar -MaxIdenticalAdjacentCharacters $maxConsecutiveIdenticalChar -MinAlphabeticCount $minAlphabeticCount -MinUppercaseCount $minUppercaseChar -MinLowercaseCount $minLowercaseChar -PasswordLifetimeDays $passwordTtlInDays | Out-Null
		Get-SsoLockoutPolicy | Set-SsoLockoutPolicy -AutoUnlockIntervalSec $autoUnlockIntervalSec -FailedAttemptIntervalSec $failedAttemptIntervalSec -MaxFailedAttempts $numAttempts | Out-Null
		if ($ppmVariables.ssoServerFqdn) {
			Disconnect-SsoAdminServer -Server $ppmVariables.ssoServerFqdn | Out-Null
		} else {
			Disconnect-SsoAdminServer -Server $vcenter.fqdn | Out-Null
		}
		Write-LogMessage -type INFO -Message "vCenter Single Sign-On: Completed setting the password policy."
	}
	
	# ESXi Hosts
	if ($ppmEnvironmentalDetails | Where-Object { ($_.productType -match "ESXi") -and ($_.productAttributes.driftAlarm -match "Red") } ) {
		$products = $ppmStandardConfigValues | Select-Object -Skip 0 | Where-Object -FilterScript { $_.productType -eq "ESXi" }
		$passwdExpInDays = $products.productAttributes.passwdExpInDays
		$numAttempts = $products.productAttributes.passwdMaxFailAttempts
		$for1CharClass = $products.productAttributes.passwdMinimumLengthFor1CharClass
		$for2CharClass = $products.productAttributes.passwdMinimumLengthFor2CharClass
		$for3CharClass = $products.productAttributes.passwdMinimumLengthFor3CharClass
		$for4CharClass = $products.productAttributes.passwdMinimumLengthFor4CharClass
		$forPhrases = $products.productAttributes.passwdMinimumCharLengthForPhrase
		$policy = "retry=" + $numAttempts + " min=" + $for1CharClass + "," + $for2CharClass + "," + $forPhrases + "," + $for3CharClass + "," + $for4CharClass
		Write-LogMessage -type INFO -Message "ESXi Hosts: Setting the password policy."
		Start-Sleep -s 5
		foreach ($cid in $ppmVariables.esxiCluster.clusters.id) {
			$cluster = Get-VCFCluster -id $cid
			Set-EsxiPasswordPolicy -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName -cluster $cluster.name -policy $policy | Out-Null
			Set-EsxiPasswordExpirationPeriod -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName -cluster $cluster.name -ExpirationInDays $passwdExpInDays | Out-Null
		}
		Write-LogMessage -type INFO -Message "ESXi Hosts: Completed setting the password policy."
	}
	
	# NSX
	$products = $ppmStandardConfigValues | Select-Object -Skip 0 | Where-Object -FilterScript {$_.productType -eq "NSXMgr"}
	$apiPasswdMaxFailAttempts = $products.productAttributes.apiPasswdMaxFailAttempts
	$apiPasswdMaxFailIntervalInSec = $products.productAttributes.apiPasswdMaxFailIntervalInSec
	$apiPasswdUnlockIntervalInSec = $products.productAttributes.apiPasswdUnlockIntervalInSec
	$cliPasswdMaxFailAttempts = $products.productAttributes.cliPasswdMaxFailAttempts
	$cliPasswdMaxFailIntervalInSec = $products.productAttributes.cliPasswdMaxFailIntervalInSec
	$minCharacterLength = $products.productAttributes.passwdMinimumLength
	if ($ppmEnvironmentalDetails | Where-Object { ($_.productType -match "NSXMgr") -and ($_.productAttributes.driftAlarm -match "Red") } ) {
		Write-LogMessage -type INFO -Message "NSX Manager: Setting the password policy."
		Set-NsxtManagerAuthenticationPolicy -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName -apiLockoutPeriod $apiPasswdUnlockIntervalInSec -apiResetPeriod $apiPasswdMaxFailIntervalInSec -apiMaxAttempt $apiPasswdMaxFailAttempts -cliLockoutPeriod $cliPasswdMaxFailIntervalInSec -cliMaxAttempt $cliPasswdMaxFailAttempts -minPasswdLength $minCharacterLength | Out-Null
		Start-Sleep -s 15
		Write-LogMessage -type INFO -Message "NSX Manager: Completed setting the password policy."
	}
	if ($ppmEnvironmentalDetails | Where-Object { ($_.productType -match "NSXEdge") -and ($_.productAttributes.driftAlarm -match "Red") } ) {
		Write-LogMessage -type INFO -Message "NSX Edge: Setting the password policy."
		Start-Sleep -s 15
		$products = $ppmStandardConfigValues | Select-Object -Skip 0 | Where-Object -FilterScript { $_.productType -eq "NSXEdge" }
		$autoUnlockIntervalSec = $products.productAttributes.cliPasswdMaxFailIntervalInSec
		$numAttempts = $products.productAttributes.clipasswdMaxFailAttempts
		$minCharacterLength = $products.productAttributes.passwdMinimumLength 
		Set-NsxtEdgeNodeAuthenticationPolicy -server $ppmVariables.sddcManagerFqdn -user $ppmVariables.sddcManagerUser -pass $ppmVariables.sddcManagerPass -domain $ppmVariables.sddcDomainName -cliLockoutPeriod $autoUnlockIntervalSec -cliMaxAttempt $numAttempts -minPasswdLength $minCharacterLength | Out-Null
		Write-LogMessage -type INFO -Message "NSX Edge: Completed setting the password policy."
	}
	
	# Workspace ONE Access
	if ($ppmVariables.wsaFqdn -and $ppmVariables.wsaAdminUser -and $ppmVariables.wsaAdminPass) {
		if($ppmEnvironmentalDetails | Where-Object { ($_.productType -match "WSA") -and ($_.productAttributes.driftAlarm -match "Red") } ) {
			$products = $ppmStandardConfigValues | Select-Object -Skip 0 | Where-Object -FilterScript { $_.productType -eq "WSA" }
			$minCharacterLength = $products.productAttributes.passwdMinimumLength
			$minLowercaseChar = $products.productAttributes.passwdMinLowercase
			$minUppercaseChar = $products.productAttributes.passwdMinUppercase
			$minNumericChar = $products.productAttributes.passwdMinNumeric
			$minSpecialChar = $products.productAttributes.passwdMinSpecial
			$passwdHistory = $products.productAttributes.passwdHistoryRestriction
			$maxConsecutiveIdenticalChar = $products.productAttributes.passwdMaxConsecutiveIdenticalChar
			$maxPreviousPasswordCharactersReused = $products.productAttributes.passwdMaxPreviousCharactersReused
			$tempPasswordTtlInHrs = $products.productAttributes.tempPasswdLifetimeInHour
			$passwordTtlInDays = $products.productAttributes.passwdExpInDays
			$notificationThresholdInDays = $products.productAttributes.passwdExpReminderInDay
			$notificationIntervalInDays = $products.productAttributes.passwdExpReminderNotificationFrequencyInDay
			$numAttempts = $products.productAttributes.passwdMaxFailAttempts
			$attemptIntervalInMins = $products.productAttributes.passwdAttemptsIntervalInMins
			$unlockIntervalInMins = $products.productAttributes.passwdUnlockIntervalInMins
			Write-LogMessage -type INFO -Message "Workspace ONE Access: Setting the password policy."
			Start-Sleep -s 10
			Request-WSAToken -fqdn $ppmVariables.wsaFqdn -user $ppmVariables.wsaAdminUser -pass $ppmVariables.wsaAdminPass | Out-Null
			Set-WSAPasswordPolicy -minLen $minCharacterLength -minLower $minLowercaseChar -minUpper $minUppercaseChar -minDigit $minNumericChar -minSpecial $minSpecialChar -history $passwdHistory -maxConsecutiveIdenticalCharacters $maxConsecutiveIdenticalChar -maxPreviousPasswordCharactersReused $maxPreviousPasswordCharactersReused -tempPasswordTtlInHrs $tempPasswordTtlInHrs -passwordTtlInDays $passwordTtlInDays -notificationThresholdInDays $notificationThresholdInDays -notificationIntervalInDays $notificationIntervalInDays | Out-Null
			Set-WSAPasswordLockout -numAttempts $numAttempts -attemptInterval $attemptIntervalInMins -unlockInterval $unlockIntervalInMins | Out-Null
			Write-LogMessage -type INFO -Message "Workspace ONE Access: Completed setting the password policy."
		}
	} else {
		Write-LogMessage -Type INFO -Message "Workspace ONE Access skipped; login details not provided."  
	}
}

# MAIN FUNCTION
Try {
	if ((($publishHTML -or $publishJSON) -and $applyPasswordPolicy) -or ($publishHTML -and $publishJSON)) {
		Write-LogMessage -Type ERROR -Message "Error multiple options triggered.  Please request only one option -publishJSON, -publishHTML or -applyPasswordPolicy." -Colour Red
		Exit
	} elseif ($publishJSON -and $ppmVariables.skipDocComparison -eq $false -and $driftOnly) {
		importStandardConfigurations -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		getEnvironmentPasswordPolicyDetail -ppmVariables $ppmVariables -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		exportReportJSON -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		Exit
	} elseif ($publishJSON -and $ppmVariables.skipDocComparison -eq $false -and $driftOnly -eq $false) {
		importStandardConfigurations -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		getEnvironmentPasswordPolicyDetail -ppmVariables $ppmVariables -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		exportReportJSON -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails  -docCompare
		Exit
	} elseif ($publishHTML -and $ppmVariables.skipDocComparison -eq $false) {
		importStandardConfigurations -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		getEnvironmentPasswordPolicyDetail -ppmVariables $ppmVariables -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		exportReportHTML -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails -docCompare
		Exit
	} elseif ($publishJSON -and $ppmVariables.skipDocComparison -eq $true) {
		getEnvironmentPasswordPolicyDetail -ppmVariables $ppmVariables -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		exportReportJSON -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		Exit
	} elseif ($publishHTML -and $ppmVariables.skipDocComparison -eq $true) {
		getEnvironmentPasswordPolicyDetail -ppmVariables $ppmVariables -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		exportReportHTML -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		Exit
	} elseif ($applyPasswordPolicy) {
		importStandardConfigurations -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		getEnvironmentPasswordPolicyDetail -ppmVariables $ppmVariables -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		setEnvironmentPasswordPolicy -ppmVariables $ppmVariables -ppmStandardConfigValues $ppmStandardConfigValues -ppmEnvironmentalDetails $ppmEnvironmentalDetails
		Exit
	}
} Catch {
	Debug-ExceptionWriter -object $_
}
