# Get-CloudProxyOtk

## Synopsis

Request One Time Key (OTK) for Cloud Proxies from VMware Cloud Service

## Syntax

```powershell
Get-CloudProxyOtk [-environment] <String> [-type] <String> [[-region] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-CloudProxyOtk` mdlet connects to the VMware Cloud Service and requests a One Time Key (OTK) which is used during the deployment of the OVA.

## Examples

### Example 1

```powershell
Get-CloudProxyOtk -environment production -type 'Cloud Proxy'
```

This example shows how to get the One Time Key (OTK) for the Cloud Proxy.

### Example 2

```powershell
Get-CloudProxyOtk -environment production -type 'Cloud Extensibility Proxy'
```

This example shows how to get the One Time Key (OTK) for the Cloud Extensibility Proxy.

## Parameters

### -environment

Connect to the production or staging VMware Cloud Service.

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

### -type

The type of Cloud Proxy to request the One Time Key (OTK) for.

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

### -region

The region to request the One Time Key (OTK) for. Only required for production environment.

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
