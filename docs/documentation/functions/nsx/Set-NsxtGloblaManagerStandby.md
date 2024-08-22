# Set-NsxtGloblaManagerStandby

## Synopsis

Set the NSX Global Manager to standby mode.

## Syntax

```powershell
Set-NsxtGloblaManagerStandby [-displayName] <String> [-standbyServer] <String> [-standbyServerUser] <String> [-standbyServerPass] <String> [<CommonParameters>]
```

## Description

The `Set-NsxtGlobalManagerMode` cmdlet sets the NSX Global Manager to standby mode.

## Examples

### Example 1

```powershell
Set-NsxtGlobalManagerMode -displayName lax-m01-nsx-gm01 -standbyServer lax-m01-nsx-gm01.lax.rainpole.io -standbyServerUser admin -standbyServerPass VMw@re1!VMw@re1!
```

This example sets the NSX Global Manager to standby mode.

## Parameters

### -displayName

Display name to be assigned to the standby NSX Global Manager.

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

### -standbyServer

The fully qualified domain name of the standby NSX Global Manager.

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

### -standbyServerUser

The username to authenticate to the standby NSX Global Manager.

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

### -standbyServerPass

The password to authenticate to the standby NSX Global Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
