# Remove-NsxtGlobalManagerStandby

## Synopsis

Deletes the standby mode configuration from the NSX Global Manager.

## Syntax

```powershell
Remove-NsxtGlobalManagerStandby [-standbyServer] <String> [-displayName] <String> [<CommonParameters>]
```

## Description

The `Remove-NsxtGlobalManagerStandby` cmdlet deletes the standby mode configuration from the NSX Global Manager.

## Examples

### Example 1

```powershell
Remove-NsxtGlobalManagerStandby -standbyServer lax-m01-nsx-gm01.lax.rainpole.io -displayName lax-m01-nsx-gm01
```

This example deletes the standby mode configuration from the NSX Global Manager.

## Parameters

### -standbyServer

The fully qualified domain name of the standby NSX Global Manager.

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

### -displayName

Display name of the standby NSX Global Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
