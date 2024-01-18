# Get-NsxtPrincipalIdentity

## Synopsis

Get list of NSX Principal Identities

## Syntax

```powershell
Get-NsxtPrincipalIdentity [[-principalId] <String>] [[-name] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtPrincipalIdentity` cmdlet gets a list of NSX Principal Identities.

## Examples

### Example 1

```powershell
Get-NsxtPrincipalIdentity
```

This example gets a list of NSX Principal Identities

### Example 2

```powershell
Get-NsxtPrincipalIdentity -principalId <string>
```

This example get an NSX Principal Identity by its Id.

### Example 3

```powershell
Get-NsxtPrincipalIdentity -name svc-iom-sfo-m01-nsx
```

This example get an NSX Principal Identity by its name.

## Parameters

### -principalId

The NSX Principal Identity ID.

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

### -name

The NSX Principal Identity name.

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
