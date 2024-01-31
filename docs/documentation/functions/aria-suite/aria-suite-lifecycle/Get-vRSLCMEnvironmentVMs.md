# Get-vRSLCMEnvironmentVMs

## Synopsis

Get product virtual machines in VMware Aria Suite Lifecycle.

## Syntax

```powershell
Get-vRSLCMEnvironmentVMs [[-server] <String>] [[-user] <String>] [[-pass] <String>] [[-productid] <String>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMEnvironmentVMs`cmdlet gets the virtual machines that exist for specific product in VMware Aria Suite Lifecycle.

## Examples

### Example 1

```powershell
Get-vRSLCMEnvironmentVMs -server sfo-sddc01.rainpole.io -user administrator -pass VMw@re1! -productid vrli
```

This example gets virtual machines that exist for VMware Aria Operations for Logs that existing in VMware Aria Suite Lifecycle.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -user

The username to authenticate to the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -pass

The password to authenticate to the SDDC Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -productid

The product ID of the product to get the details for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
