# `passwordPolicyManager`

## Table of Contents
1. [Introduction](#introduction)
2. [Requirements](#requirements)
3. [Get Started](#get-started)
4. [Sample Configuration Guidance](#sample-configuration-guidance)
5. [Known Issues](#known-issues)

## Introduction

The `passwordPolicyManager` PowerShell script is used to retrieve and configure password policy settings for ESXi hosts, vCenter Server, Single Sign On Services, NSX-T Data Center, and Workspace ONE Access.

You can configure the existing `sampleConfigurationSimple.json` file with a set of password policy requirements and use the file to generate a report with the current password settings or directly configure the password settings for each product.

Password settings do not have full parity across products, you compare or configure specific password settings for each product based on the values provided in the `sampleConfigurationFull.json` file.

## Requirements

The `passwordPolicyManager` PowerShell script is tested on the following:

- Windows Server 2019 and later
- Windows Powershell 5.1
- `PowerVCF` 2.2.0
- `PowerValidatedSolutions` 1.8.0

## Getting Started

Configure using the standard configuration.

1. Copy the `sampleConfigurationSimple.json` (or `sampleConfigurationFull.json`) file as `sampleConfiguration.json` file.

2. Modify the copied `sampleConfiguration.json` file according to Section 03: Sample Configuration Guidance. and according to your password policy requirements.

3. Save the changes.

Run the `passwordPolicyManager` PowerShell script.

**Example**:

Export current password policy of a workload domain in a JSON format.

> **Note**
>
> To generate an HTML password policy report, replace the `publishJSON` parameter with `publishHTML` in the command.

```powershell
$sddcManagerFqdn = "sfo-vcf01.sfo.rainpole.io"
$sddcManagerUser = "administrator@vsphere.local"
$sddcManagerPass = "VMw@re1!"
$sddcManagerDomain = “sfo-m01”
$wsaServerFqdn = "sfo-wsa01.sfo.rainpole.io"
$wsaServerUser= "admin"
$wsaServerPass = "VMw@re1!"
$sampleConfigurationPath = ".\sampleConfiguration.json"
$outputfile = ".\password_policy_report"

.\passwordpolicymanager.ps1 -sddcFqdn $sddcManagerFqdn -sddcUser $sddcManagerUser -sddcPass $sddcManagerPass -sddcDomain $sddcManagerDomain -wsaFqdn $wsaServerFqdn -wsaUser $wsaServerUser -wsaPass $wsaServerPass -commonPolicyFile $sampleConfigurationPath -outputFile $outputfile -publishJSON
```

**Example**:

Apply `sampleConfiguration` password policy requirements to a workload domain

```powershell
$sddcManagerFqdn = "sfo-vcf01.sfo.rainpole.io"
$sddcManagerUser = "administrator@vsphere.local"
$sddcManagerPass = "VMw@re1!"
$sddcManagerDomain = “sfo-m01”
$wsaServerFqdn = "sfo-wsa01.sfo.rainpole.io"
$wsaServerUser= "admin"
$wsaServerPass = "VMw@re1!"
$sampleConfigurationPath = ".\sampleConfiguration.json"

.\passwordpolicymanager.ps1 -sddcFqdn $sddcManagerFqdn -sddcUser $sddcManagerUser -sddcPass $sddcManagerPass -sddcDomain $sddcManagerDomain -wsaFqdn $wsaServerFqdn -wsaUser $wsaServerUser -wsaPass $wsaServerPass -commonPolicyFile $sampleConfigurationPath -configurePasswordPolicy
```

## Sample Configuration Guidance

```json
{
	"Default":{ // Mininum settings required [products affected by the configuration].
		"passwdExpInDays":"90", // Password expiration period in days [ESXi, VC, SSO, WSA]; default password expires every 90 days.
		"passwdMinimumLength":"15", // Minimum character length for password in number of characters [ESXi, SSO, NSX, WSA]; default minimum is 15 characters.
		"passwdMinUppercase":"1", // Minimum number of Upper case (A-Z) characters within the password [SSO, WSA]; default minimum is 1 upper case character.
		"passwdMinLowercase":"1", // Minimum number of Lower case (a-z) characters within the password [SSO, WSA]; default minimum is 1 lower case character.
		"passwdMinNumeric":"1", // Minimum number of Numeric (0-9) characters within the password[SSO, WSA]; default minimum is 1 numeric character.
		"passwdMinSpecial":"1", // Minimum numnber of special characters within the password [SSO, WSA]; default minimum is 1 special character.
		"passwdMaxConsecutiveIdenticalChar":"1", // Minimum number of consecutive identical character within the password [SSO, WSA]; default is only 3 consecutive.
		"passwdHistoryRestriction":"5", // Minimum number of unique new passwords before an old password can be reused [SSO, WSA]; default is 5 unique password.
		"passwdUnlockIntervalInSec":"900", // Interval in seconds until a locked account automatically unlocks [SSO, WSA, NSX]; default is 15 mins
		"passwdMaxFailAttempts":"5", // Maximum number of login attempts before account auto lock [SSO, WSA]; default is 5 attempts.
		"passwdAttemptsIntervalInSec":"180", // Interval in seconds before login attempts counter resets [SSO, WSA]; default is 3 mins.
		"passwdMaxFailIntervalInSec":"180",		 // Interval in seconds before cli login attempts counter resets[SSO, NSX]; default is 3 mins.
		"passwdNotifyEmail":"admin@rainpole.io", // Email for notifying vCenter Server appliance password expiration date [VC].
		"passwdMaximumLength":"20", // Maximum character length for password in number of characters [SSO]; default is 20 characters.
		"passwdMinAlphabetic":"2", // Minimum number of alphabetic (A-Z,a-z) characters in the password [SSO]; default is 2 characters.
		"passwdMaxPreviousCharactersReused":"0", // Maximum count of previous character reused [WSA], example if this is set to 2 and an old password is "VMware" then new password cannot contain "VM"; default is 0 which is disabled.
		"passwdAttemptsIntervalInMins":"3", // Interval in minutes before login attempts counter resets[WSA]; default is 3 mins.
		"passwdUnlockIntervalInMins":"15", // Interval in minutes until a locked account automatically unlocks[WSA]; default is 15 mins.
		"tempPasswdLifetimeInHour":"24", // Temporary password will expire in how many hours[WSA]; default is 24 hours.
		"passwdExpReminderInDay":"15", // Number in days until password expiration before a reminder notice is send out[WSA]; default is 15 days.
		"passwdExpReminderNotificationFrequencyInDay":"1" // Once a reminder notice is send, number of duration before the next reminder notice is sent [WSA]; default is 1 day.
	},
	"ESXi":{ // [Optional] More specific detail option for each product can be set within the configuration JSON.
		"passwdExpInDays":"Default", // Setting Default will use the values set in the Default section
		"passwdMaxFailAttempts":"Default",
		"passwdMinimumLengthFor1CharClass":"disabled", // ESXi password character length required for 1 character class set, set "disable" for not allowing password to have 1 character class set.
		"passwdMinimumLengthFor2CharClass":"disabled", // ESXi password character length required for 2 character class set, set "disable" for not allowing password to have 2 character class set.
		"passwdMinimumLengthFor3CharClass":"disabled", // ESXi password character length required for 3 character class set, set "disable" for not allowing password to have 3 character class set.
		"passwdMinimumLengthFor4CharClass":"Default",
		"passwdMinimumCharLengthForPhrase":"disabled" // ESXi minimum character length for password phrase, set "disable" for not allowing password phrase.
	},
	"VC":{ // [optional] More specific detail option for each product can be set within the configuration JSON.
		"passwdExpInDays":"Default",
		"passwdNotifyEmail":"admin@rainpole.io"
	},
	"SSO":{ // [optional] More specific detail option for each product can be set within the configuration JSON.
		"passwdExpInDays":"Default",
		"passwdHistoryRestriction":"Default",
		"passwdMinimumLength":"Default",
		"passwdMaximumLength":"20",
		"passwdMinUppercase":"Default",
		"passwdMinLowercase":"Default",
		"passwdMinAlphabetic":"2",
		"passwdMinNumeric":"Default",
		"passwdMinSpecial":"Default",
		"passwdMaxConsecutiveIdenticalChar":"Default",
		"passwdMaxFailAttempts":"Default",
		"passwdAttemptsIntervalInSec":"Default",
		"passwdUnlockIntervalInSec":"Default"
	},
	"NSXMgr":{ // [optional] More specific detail option for each product can be set within the configuration JSON.
		"passwdMinimumLength":"Default",
		"apiPasswdMaxFailAttempts":"Default",
		"apiPasswdMaxFailIntervalInSec":"Default",
		"apiPasswdUnlockIntervalInSec":"Default",
		"cliPasswdMaxFailAttempts":"Default",
		"cliPasswdMaxFailIntervalInSec":"Default"
	},
	"NSXEdge":{ // [optional] More specific detail option for each product can be set within the configuration JSON.
		"passwdMinimumLength":"Default",
		"cliPasswdMaxFailAttempts":"Default",
		"cliPasswdMaxFailIntervalInSec":"Default"
	},
	"WSA":{ // [optional] More specific detail option for each product can be set within the configuration JSON.
		"passwdExpInDays":"Default",
		"passwdHistoryRestriction":"Default",
		"passwdMinimumLength":"Default",
		"passwdMinUppercase":"Default",
		"passwdMinLowercase":"Default",
		"passwdMinNumeric":"Default",
		"passwdMinSpecial":"Default",
		"passwdMaxConsecutiveIdenticalChar":"Default",
		"passwdMaxPreviousCharactersReused":"0",
		"passwdMaxFailAttempts":"Default",
		"passwdAttemptsIntervalInMins":"3",
		"passwdUnlockIntervalInMins":"15",
		"tempPasswdLifetimeInHour":"24",
		"passwdExpReminderInDay":"15",
		"passwdExpReminderNotificationFrequencyInDay":"1"
	}
}
```

## Known Issues

**Issue**: You encounter an access error when retrieving or applying the password policy to NSX Managers or NSX Edges.

**Workaround**: Please wait 15 seconds and run the script again.
