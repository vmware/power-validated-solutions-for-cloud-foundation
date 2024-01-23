# Connect-vSphereMobServer

## Synopsis

Connect to the vSphere Managed Object Browser (MOB)

## Syntax

```powershell
Connect-vSphereMobServer [-server] <String> [-username] <String> [-password] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Connect-vSphereMobServer` cmdlet is used to connect to the vSphere Managed Object Browser (MOB).

## Examples

### Example 1

```powershell
Connect-vSphereMobServer -server sfo-m01-vc01.sfo.rainpole.io -username administrator@vsphere.local -password VMw@re1!
```

## Parameters

### -server

The vCenter Server FQDN.

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

The vCenter Server administrator username.

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

The vCenter Server administrator password.

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
