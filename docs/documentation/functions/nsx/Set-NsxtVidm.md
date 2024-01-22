# Set-NsxtVidm

## Synopsis

Set Identity Manager configuration

## Syntax

```powershell
Set-NsxtVidm [-wsaHostname] <String> [-thumbprint] <String> [-clientId] <String> [-sharedSecret] <String>
 [-nsxHostname] <String> [-disable] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-NsxtVidm` cmdlet configures Identity Manager in NSX Manager.

## Examples

### Example 1

```powershell
Set-NsxtVidm -wsaHostname <String> -thumbprint <String> -clientId <String> -sharedSecret <String>
 -nsxHostname <String> 
```

This example configures the Identity Manager in NSX Manager.

## Parameters

### -wsaHostname

The Workspace ONE Access hostname.

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

### -thumbprint

The Workspace ONE Access thumbprint.

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

### -clientId

The Workspace ONE Access client ID.

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

### -sharedSecret

The Workspace ONE Access shared secret.

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

### -nsxHostname

The NSX Manager hostname.

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

### -disable

Disable the Identity Manager configuration.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
