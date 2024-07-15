# Get-vRSLCMProductPassword

## Synopsis

Get the product password from VMware Aria Suite Lifecycle.

## Syntax

```powershell
Get-vRSLCMProductPassword [-productId] <String> [-vrslcmRootPass] <String>  [nodeFqdn] <String>  [<CommonParameters>]
```

## Description

The `Get-vRSLCMProductPassword` cmdlet gets the product password for a specified product in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
 Get-vRSLCMProductPassword -productId vrops -vrslcmRootPass VMware123!
```

This example gets product level password in VMware Aria Suite Lifecycle.

### Example 2

```powershell
Get-vRSLCMProductPassword -productId vrops -vrslcmRootPass VMware123! -nodeFqdn sfo-vrops01a.rainpole.io
```

This example gets the password for a specific node in VMware Aria Suite Lifecycle.

### Example 3

```powershell
Get-vRSLCMProductPassword -vrslcmRootPass VMware123! -vmid 12345678-1234-1234-1234-123456789012

```

This example gets the password using vmid for specific node in VMware Aria Suite Lifecycle.

## Parameter

### -productId

he product ID of the product to get the password for.

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

### -vrslcmRootPass

The root password of the VMware Aria Suite Lifecycle appliance.

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

### -nodeFqdn

The fully qualified domain name of the node to get the password for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
```

### -vmid

The vmid of the product to get the password for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
