# Undo-vRSLCMNtpServer

## Synopsis

Set the NTP Server configuration of VMware Aria Suite Lifecycle to match SDDC Manager

## Syntax

```powershell
Undo-vRSLCMNtpServer [-server] <String> [-user] <String> [-pass] <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Undo-vRSLCMNtpServer` cmdlet sets the NTP Server details of the VMware Aria Suite Lifecycle appliance
back to what is stored in SDDC Manager.
The cmdlet connects to SDDC Manager using the -server, -user, and
-password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Retrieves NTP server configuration from SDDC Manager
- Configures the VMware Aria Suite Lifecycle to use only the values stored in SDDC Manager.

## Examples

### Example 1

```powershell
Undo-vRSLCMNtpServer -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1!
```

This example configures the VMware Aria Suite Lifecycle appliance managed by SDDC Manager sfo-vcf01.sfo.rainpole.io to use only the NTP servers found in SDDC Manager.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -user

The username used to authenticate to SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -pass

The password used to authenticate to SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProgressAction

Progress Action

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: proga

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
