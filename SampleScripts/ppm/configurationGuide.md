{
	"Default":{								// Mininum Settings required [products affected by the configuration].
		"passwdExpInDays":"90",				// Password Expiration period in days[ESXi, VC, SSO, WSA]; default password expires every 90 days
		"passwdMinimumLength":"15",				// Minimum character length for password in number of characters[ESXi, SSO, NSXT, WSA]; default minimum is 15 characters for password.
		"passwdMinUppercase":"1",				// Minimum number of Upper case (A-Z) characters within the password[SSO, WSA]; default minimum is 1 Upper case character.
		"passwdMinLowercase":"1",				// Minimum number of Lower case (a-z) characters within the password[SSO, WSA]; default minimum is 1 Lower case character.
		"passwdMinNumeric":"1",					// Minimum number of Numeric (0-9) characters within the password[SSO, WSA]; default minimum is 1 Numeric character.
		"passwdMinSpecial":"1",					// Minimum numnber of special characters within the password[SSO, WSA]; default minimum is 1 special character.
		"passwdMaxConsecutiveIdenticalChar":"1",// Minimum number of consecutive identical character within the password[SSO, WSA]; default is only 3 consecutive.
		"passwdHistoryRestriction":"5",			// Minimum number of unique new passwords before an old password can be reused[SSO, WSA]; default is 5 unique password. 
		"passwdUnlockIntervalInSec":"900",		// Interval in seconds until a locked account automatically unlocks[SSO, WSA]; default is 15 mins
		"passwdMaxFailAttempts":"5",			// Maximum number of login attempts before account auto lock[SSO, WSA]; default is 5 attempts.
		"passwdAttemptsIntervalInSec":"180"		// Interval in seconds before login attempts counter resets[SSO, WSA]; default is 3 mins.
		"passwdMaxFailIntervalInSec":"180",		// Interval in seconds before cli login attempts counter resets[NSXT]; default is 3 mins.
		"passwdNotifyEmail":"admin@rainpole.io", //Notify Email for notifying vCenter appliance password expiration date[VC]
		"passwdMaximumLength":"20",				//Maximum character length for password in number of characters[SSO]; default is 20 characters
		"passwdMinAlphabetic":"2",				//Minimum number of alphabetic (A-Z,a-z) characters in the password[SSO]; default is 2 characters.
		"passwdMaxPreviousCharactersReused":"0", //Maximum count of previous character reused[WSA], example if this is set to 2 and an old password is VMware then new password cannot have VM; default is 0 which is disabled
		"passwdAttemptsIntervalInMins":"3",		// Interval in minutes before login attempts counter resets[WSA]; default is 3 mins
		"passwdUnlockIntervalInMins":"15",		// Interval in minutes until a locked account automatically unlocks[WSA]; default is 15 mins
		"tempPasswdLifetimeInHour":"24",		// Temporary password will expire in how many hours[WSA]; default is 24 hours.
		"passwdExpReminderInDay":"15",			// Number in days until password expiration before a reminder notice is send out[WSA]; default is 15 days
		"passwdExpReminderNotificationFrequencyInDay":"1"  // Once a reminder notice is send out, number of duration before the next reminder notice is send out[WSA]; default is 1 day
	},
	"ESXi":{									//[optional] More specific detail option for each product can be set within the configuration json
		"passwdExpInDays":"Default",					// Setting Default will use the values set in the default section above
		"passwdMaxFailAttempts":"Default",
		"passwdMinimumLengthFor1CharClass":"disabled",  // ESXi password character length required for 1 character class set, set "disable" for not allowing password to have 1 character class set
		"passwdMinimumLengthFor2CharClass":"disabled",  // ESXi password character length required for 2 character class set, set "disable" for not allowing password to have 2 character class set
		"passwdMinimumLengthFor3CharClass":"disabled",  // ESXi password character length required for 3 character class set, set "disable" for not allowing password to have 3 character class set
		"passwdMinimumLengthFor4CharClass":"Default",  
		"passwdMinimumCharLengthForPhrase":"disabled"   // ESXi minimum character length for password phrase, set "disable" for not allowing password phrase. 
	},
	"VC":{										//[optional] More specific detail option for each product can be set within the configuration json
		"passwdExpInDays":"Default",
		"passwdNotifyEmail":"admin@rainpole.io"
	},
	"SSO":{										//[optional] More specific detail option for each product can be set within the configuration json
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
	"NSXMgr":{							//[optional] More specific detail option for each product can be set within the configuration json
		"passwdMinimumLength":"Default",
		"apiPasswdMaxFailAttempts":"Default",
		"apiPasswdAttemptsIntervalInSec":"Default",
		"apiPasswdUnlockIntervalInSec":"Default",			
		"cliPasswdMaxFailAttempts":"Default",
		"cliPasswdAttemptsIntervalInSec":"Default"
	},
	"NSXEdge":{							//[optional] More specific detail option for each product can be set within the configuration json
		"passwdMinimumLength":"Default",
		"passwdMaxFailAttempts":"Default",
		"passwdAttemptsIntervalInSec":"Default"
	},
	"WSA":{								//[optional] More specific detail option for each product can be set within the configuration json
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