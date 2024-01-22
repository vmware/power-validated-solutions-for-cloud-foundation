# Set-vROPSManagementPack

## Synopsis

Activate / Deactivate a management pack

## Syntax

```powershell
Set-vROPSManagementPack [-server] <String> [-username] <String> [-password] <String> [-pakId] <String>
 [-version] <String> [-status] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vROPSManagementPack` cmdlet activates or deactivates a management pack in VMware Aria Operations.

## Examples

### Example 1

```powershell
Set-vROPSManagementPack -server xint-vrops01.rainpole.io -username admin -password VMw@re1! -pakId PingAdapter -version "8.4.0.17863953" -status enable
```

This example activates the Ping management pack in VMware Aria Operations

### Example 2

```powershell
Set-vROPSManagementPack -server xint-vrops01.rainpole.io -username admin -password VMw@re1!
-pakId PingAdapter -version "8.4.0.17863953" -status disable
```

This example deactivates the Ping management pack in VMware Aria Operations.

## Parameters

### -server

The FQDN or IP address of the VMware Aria Operations appliance.

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

### -username

The username to authenticate to the VMware Aria Operations appliance.

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

### -password

The password to authenticate to the VMware Aria Operations appliance.

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

### -pakId

The ID of the management pack to activate or deactivate.

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

### -version

The version of the management pack to activate or deactivate.

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

### -status

The status to set the management pack to. Valid values are enable or disable.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
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
