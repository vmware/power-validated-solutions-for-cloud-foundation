# Test-vSphereApiAuthentication

## Synopsis

Check Authentication to vSphere API

## Syntax

```powershell
Test-vSphereApiAuthentication [-server] <String> [-user] <String> [-pass] <String> [-admin]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-vSphereApiAuthentication` cmdlet checks Authentication to vSphere API.

## Examples

### Example 1

```powershell
Test-vSphereApiAuthentication [-server] <String> [-user] <String> [-pass] <String> [-admin]
```

## Parameters

### -admin

The admin for vCenter.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -pass

The password for vCenter.

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

### -user

The username for vCenter.

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
