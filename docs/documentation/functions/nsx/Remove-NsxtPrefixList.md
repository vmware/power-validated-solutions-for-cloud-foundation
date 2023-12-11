# Remove-NsxtPrefixList

## Synopsis

Remove an IP Prefix List from a Tier-0 Gateway

## Syntax

```powershell
Remove-NsxtPrefixList [[-name] <String>] [[-tier0Gateway] <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Remove-NsxtPrefixList` cmdlet removes a IP Prefix List from a specified Tier-0 Gateway.

## Examples

### Example 1

```powershell
Remove-NsxtPrefixList -name sfo-w01-cl01-prefix-list -tier0Gateway sfo-w01-ec01-t0-gw01
```

This example removes a Prefix List on a Tier 0 Gateway.

## Parameters

### -name

The IP Prefix List name.

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

### -tier0Gateway

The Tier-0 Gateway name.

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
