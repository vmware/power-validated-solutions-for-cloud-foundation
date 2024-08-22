# Add-NsxtGlobalManagerMode

## Synopsis

Configures the NSX Global Manager to active or standby mode.

## Syntax

```powershell
Add-NsxtGlobalManagerMode [-server] <String> [-user] <String> [-pass] <String> [-mode] <String> [-displayName] <String> [[-standbyServer] <String>] [[-standbyServerUser] <String>] [[-standbyServerPass] <String>] [<CommonParameters>]
```

## Description

The `Add-NsxtGlobalManagerMode` cmdlet configures the NSX Global Manager to active or standby mode.

- Validates that network connectivity and authentication is possible to NSX Global Manager
- Configures the NSX Global Manager to active or standby mode

## Examples

### Example 1

```powershell
Add-NsxtGlobalManagerMode -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -mode Active -displayName sfo-m01-nsx-gm01
```

This example sets the NSX Global Manager to active mode.

### Example 2

```powershell
Add-NsxtGlobalManagerMode -server sfo-m01-nsx-gm01.sfo.rainpole.io -user admin -pass VMw@re1!VMw@re1! -mode STANDBY -displayName lax-m01-nsx-gm01 -standbyServer lax-m01-nsx-gm01.lax.rainpole.io -standbyServerUser admin -standbyServerPass "VMw@re1!VMw@re1!"
```

This example sets the NSX Global Manager to standby mode.

## Parameters

### -server

The fully qualified domain name of the NSX Global Manager.

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

### -user

The username to authenticate to the NSX Global Manager.

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

### -pass

The password to authenticate to the NSX Global Manager.

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

### -mode

The mode (ACTIVE or STANDBY) to be configured to the NSX Global Manager.

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

### -displayName

Display name to be assigned to the active or standby NSX Global Manager.

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

### -standbyServer

The fully qualified domain name of the standby NSX Global Manager.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
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

Required: False
Position: 7
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

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
