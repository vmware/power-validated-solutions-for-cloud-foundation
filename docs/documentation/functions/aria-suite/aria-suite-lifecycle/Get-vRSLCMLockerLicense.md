# Get-vRSLCMLockerLicense

## Synopsis

Get paginated list of licenses available in the locker.

## Syntax

```powershell
Get-vRSLCMLockerLicense [[-vmid] <String>] [[-alias] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-vRSLCMLockerLicense` cmdlet gets a paginated list of licenses available in the locker.

## Examples

### Example 1

```powershell
Get-vRSLCMLockerLicense
```

This example gets all licenses in the locker

### Example 2

```powershell
Get-vRSLCMLockerLicense -vmid 2b54b028-9eba-4d2f-b6ee-66428ea2b297
```

This example gets the details of a license based on the vmid

### Example 3

```powershell
Get-vRSLCMLockerLicense -alias "VMware Aria Operations"
```

This example gets the details of a license based on the alias name.

## Parameters

### -vmid

The vmid of the license.

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

### -alias

The alias of the license.

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
