# Set-NsxtApplianceUserExpirationPolicy

## Synopsis

Updates the password expiration policy for NSX appliance user.

## Syntax

```powershell
Set-NsxtApplianceUserExpirationPolicy [-userId] <String> [-maxDays] <Int32> [[-transportNodeId] <String>]
 [[-clusterNodeId] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-NsxtApplianceUserExpirationPolicy` cmdlet updates the password expiration policy for an NSX appliance user.

## Examples

### Example 1

```powershell
Set-NsxtApplianceUserExpirationPolicy -userId 0 -days 9999
```

This example updates the password expiration policy for the userId 0 (root) to 9999 days.

## Parameters

### -userId

The id of the user.

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

### -maxDays

The maximum number of days before the password expires.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -transportNodeId

The id of the transport node.

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

### -clusterNodeId

The id of the cluster node.

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
