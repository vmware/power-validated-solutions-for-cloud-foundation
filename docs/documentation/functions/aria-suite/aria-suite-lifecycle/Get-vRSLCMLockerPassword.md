# Get-vRSLCMLockerPassword

## Synopsis

Get paginated list of Passwords available in the Store

## Syntax

```powershell
Get-vRSLCMLockerPassword [[-vmid] <String>] [[-alias] <String>] [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `Get-vRSLCMLockerPassword` cmdlet gets a paginated list of passwords available in the locker.

## Examples

### Example 1

```powershell
Get-vRSLCMLockerPassword
```

This example gets all passwords in the locker

### Example 2

```powershell
Get-vRSLCMLockerPassword -vmid 83abd0fd-c92d-4d8f-a5e8-9a1fc4fa6009
```

This example gets the details of a password based on the vmid

### Example 3

```powershell
Get-vRSLCMLockerPassword -alias xint-env-admin
```

This example gets the details of a password based on the alias.

## Parameters

### -vmid

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
