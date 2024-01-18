# Test-EsxiAuthentication

## Synopsis

Check authentication to an ESXi host.

## Syntax

```powershell
Test-EsxiAuthentication [-server] <String> [-user] <String> [-pass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-EsxiAuthentication` cmdlet checks the authentication to an ESXi host.

## Examples

### Example 1

```powershell
Test-EsxiAuthentication -server sfo01-m01-esx01.sfo.rainpole.io -user root -pass VMware1!
```

This example checks authentication to an ESXi host.

## Parameters

### -server

The fully qualified domain name (FQDN) or IP address of the ESXi host.

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

### -user

The username to authenticate to the ESXi host.

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

### -pass

The password to authenticate to the ESXi host.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
