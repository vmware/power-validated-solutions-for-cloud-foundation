# Get-CloudProxy

## Synopsis

Request Cloud Proxies from VMware Cloud Service

## Syntax

### download

```powershell
Get-CloudProxy -environment <String> [-region <String>] -type <String> [-download] [-path <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### ovaUrl

```powershell
Get-CloudProxy -environment <String> [-region <String>] -type <String> [-ovaUrl]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-CloudProxy` cmdlet connects to the VMware Cloud Service and either downloads the OVA or
supplies the OVA link.

## Examples

### Example 1

```powershell
Get-CloudProxy -environment production -type 'Cloud Proxy' -ovaUrl
```

This example shows how to obtain the URL to the Cloud Proxy OVA.

### Example 2

```powershell
Get-CloudProxy -environment production -region uk -type 'Cloud Proxy' -ovaUrl
```

This example shows how to obtain the URL to the Cloud Proxy OVA for the United Kingdom region.

## Parameters

### -environment

Connect to the production or staging VMware Cloud Service.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
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
Position: Named
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
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -download

Download the OVA to the path provided.

```yaml
Type: SwitchParameter
Parameter Sets: download
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -path

The path to download the OVA to.

```yaml
Type: String
Parameter Sets: download
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ovaUrl

Return the URL to the OVA.

```yaml
Type: SwitchParameter
Parameter Sets: ovaUrl
Aliases:

Required: False
Position: Named
Default value: False
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
