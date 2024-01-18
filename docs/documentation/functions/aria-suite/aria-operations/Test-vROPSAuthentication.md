# Test-vROPSAuthentication

## Synopsis

Check Authentication to a VMware Aria Operations cluster or analytics node.

## Syntax

```powershell
Test-vROPSAuthentication [-server] <String> [-user] <String> [-pass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-vROPSAuthentication` cmdlet checks Authentication to VMware Aria Operations cluster or analytics node.

## Examples

### Example 1

```powershell
Test-vROPSAuthentication [-server] <String> [-user] <String> [-pass] <String>
```

## Parameters

### -pass

The password to connect to the VMware Aria Operations appliance.

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

The fully qualified domain name of the VMware Aria Operations appliance.

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

The fully qualified domain name (FQDN) or IP address of the a VMware Aria Operations cluster or node.

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
