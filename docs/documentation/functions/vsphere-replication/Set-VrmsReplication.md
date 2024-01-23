# Set-VrmsReplication

## Synopsis

Set the replication server settings

## Syntax

```powershell
Set-VrmsReplication [-filterIp] <String> [-managementIp] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-VrmsReplication` cmdlet configures the replication server settings for a vSphere Replication appliance.

## Examples

### Example 1

```powershell
Set-VrmsReplication -filterIp 172.18.111.125 -managementIp 172.18.95.125
```

This example configures the vCenter Server registration with the vSphere Replication appliance.

## Parameters

### -filterIp

The filterIp parameter The IP address of the vSphere Replication appliance.

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

### -managementIp

The managementIp parameter The IP address of the vSphere Replication appliance.

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
