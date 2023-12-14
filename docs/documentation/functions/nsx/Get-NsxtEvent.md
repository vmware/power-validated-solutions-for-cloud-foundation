# Get-NsxtEvent

## Synopsis

Return the events for an NSX Manager cluster.

## Syntax

```powershell
Get-NsxtEvent [-fqdn] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtEvent` cmdlet returns the events for an NSX Manager cluster.

## Examples

### Example 1

```powershell
Get-NsxtEvent -fqdn sfo-w01-nsx01.sfo.rainpole.io
```

This example returns events for an NSX Manager cluster named sfo-w01-nsx01.sfo.rainpole.io.

## Parameters

### -fqdn

The fully qualified domain name of the NSX Manager cluster.

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
