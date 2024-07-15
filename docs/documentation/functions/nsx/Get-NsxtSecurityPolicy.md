# Get-NsxtSecurityPolicy

## Synopsis

Get configured security policies

## Syntax

```powershell
Get-NsxtSecurityPolicy [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtSecurityPolicy` cmdlet returns a paginated list of security policies.

## Examples

### Example 1

```powershell
Get-NsxtSecurityPolicy
```

This example retrieves a paginated list of all security policies.

### Example 2

```powershell
Get-NsxtSecurityPolicy [[-id] <String>]
```

This example retrieves the specified security policy.

## Parameters

### -id

The id of the security policy.

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
