# Test-vSphereApiConnection

## Synopsis

Check Connection to vSphere Api

## Syntax

```powershell
Test-vSphereApiConnection [-server] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-vSphereApiConnection` cmdlet checks Connection to vSphere Api.

## Examples

### Example 1

```powershell
Test-vSphereApiConnection [-server] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the vCenter Server instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
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
