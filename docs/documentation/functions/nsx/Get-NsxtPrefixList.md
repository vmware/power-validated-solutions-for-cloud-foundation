# Get-NsxtPrefixList

## Synopsis

Get Tier-0 Gateway IP Prefix Lists

## Syntax

```powershell
Get-NsxtPrefixList [[-tier0Gateway] <String>] [[-name] <String>] [[-inputObject] <PSObject>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtTier0PrefixList` cmdlet retrieves the IP Prefix Lists assigned to a Tier-0 Gateway.

## Examples

### Example 1

```powershell
Get-NsxtPrefixList -tier0Gateway sfo-w01-ec01-t0-gw01
```

This example returns all IP Prefix Lists.

### Example 2

```powershell
Get-NsxtPrefixList -tier0Gateway sfo-w01-ec01-t0-gw01 -name sfo-w01-cl01-prefix-list
```

This example returns the IP Prefix List based on the prefix name provided.

### Example 3

```powershell
Get-NsxtTier0Gateway -name sfo-w01-ec01-t0-gw01 | Get-NsxtPrefixList -name sfo-w01-cl01-prefix-list
```

This example returns the IP Prefix List based on the prefix name provided.

## Parameters

### -tier0Gateway

The Tier-0 Gateway name.

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

### -name

The IP Prefix List name.

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

### -inputObject

The Tier-0 Gateway object.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByValue)
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
