# Undo-vROPSNtpServer

## Synopsis

Configure NTP settings for all VMware Aria Operations appliances to match SDDC Manager

## Syntax

```powershell
Undo-vROPSNtpServer [-server] <String> [-user] <String> [-pass] <String> [-environmentName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vROPSNtpServer` cmdlet removes any added NTP server(s) to all VMware Aria Operations appliances by
returning their configuration to match that of SDDC Manager.
The cmdlet connects to SDDC Manager using the
-server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Configures all VMware Aria Operations appliances to the use NTP server(s) defined in SDDC Manager.

## Examples

### Example 1

```powershell
Undo-vROPSNtpServer -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -environmentName xint-env
```

This example configures the VMware Aria Operations appliances managed by SDDC Manager sfo-vcf01.sfo.rainpole.io to use the NTP server(s) defined in SDDC Manager.

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

### -environmentName

The name of the environment to configure.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
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
