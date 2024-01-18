# Test-VrmsVamiAuthentication

## Synopsis

Check Authentication to a VMware Replication Manager node.

## Syntax

```powershell
Test-VrmsVamiAuthentication [-server] <String> [-user] <String> [-pass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-VrmsVamiAuthentication` cmdlet checks Authentication to VMware Replication Manager node.

## Examples

### Example 1

```powershell
Test-VrmsVamiAuthentication [-server] <String> [-user] <String> [-pass] <String>
```

## Parameters

### -pass

The password vSphere Replication instance.

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

The fully qualified domain name (FQDN) or IP address of the a vSphere Replication instance.

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

The user vSphere Replication instance.

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
