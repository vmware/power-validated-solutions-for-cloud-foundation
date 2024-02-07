# Start-vRSLCMUpgrade

## Synopsis

Starts the upgrade process for VMware Aria Suite Lifecycle

## Syntax

``` powershell
Start-vRSLCMUpgrade [-server] <String> [-user] <String> [-pass] <String> [[-type] <String>]
 [<CommonParameters>]
```

## Description

The `Start-vRSLCMUpgrade` cmdlet starts the upgrade process of VMware Aria Suite Lifecycle.

The cmdlet connects to sSDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Starts the upgrade process of VMware Aria Suite Lifecycle

## Examples

### Example 1

``` powershell
Start-vRSLCMUpgrade -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -type CDROM
```
This example disconnects the ISO from VMware Aria Suite Lifecycle

## Parameters

### -server

The SDDC Manager FQDN.

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

The SDDC Manager administrator username.

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

The SDDC Manager administrator password.

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

### -type

The location for the upgrade ISO file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: CDROM
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
