# Undo-vROPSDnsConfig

## Synopsis

Sets the DNS Server and/or DNS search domains on VMware Aria Operations appliances to match SDDC Manager

## Syntax

```powershell
Undo-vROPSDnsConfig [-server] <String> [-user] <String> [-pass] <String> [-sddcManagerRootPass] <String> [-environmentName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vROPSDnsConfig` cmdlet configures the DNS server and search domain details of VMware Aria Operations analytics cluster appliances to the values stored in SDDC Manager. The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to Management Domain vCenter Server
- Retrieves the DNS server and search domain values from SDDC Manager
- Configures VMware Aria Operations analytics cluster appliance DNS configuration to match the values retrieved from SDDC Manager

## Examples

### Example 1

```powershell
Undo-vROPSDnsConfig -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -sddcManagerRootPass VMw@re1! -environmentName xint-env
```

This example configures all VMware Aria Operations analytics cluster appliances managed by SDDC Manager sfo-vcf01.sfo.rainpole.io to use values for DNS servers and search domains to the values stored in SDDC Manager.

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

### -sddcManagerRootPass

The root password to authenticate to SDDC Manager appliance. to connect with.

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

### -environmentName

The SDDC Manager environment name to connect with.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
