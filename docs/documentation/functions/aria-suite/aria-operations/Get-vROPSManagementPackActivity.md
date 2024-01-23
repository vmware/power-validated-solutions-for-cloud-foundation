# Get-vROPSManagementPackActivity

## Synopsis

Get current activity

## Syntax

```powershell
Get-vROPSManagementPackActivity [-server] <String> [-username] <String> [-password] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vROPSManagementPackActivity` cmdlet gets the current activity for management packs in VMware Aria Operations.

## Examples

### Example 1

```powershell
Get-vROPSManagementPackActivity -server xint-vrops01.rainpole.io -username admin -password VMw@re1!
```

This example gets the current management pack activity in VMware Aria Operations.

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
