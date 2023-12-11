# Test-vROPSAdapterConnection

## Synopsis

Test adapter connection

## Syntax

```powershell
Test-vROPSAdapterConnection [-json] <String> [-patch] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-vROPSAdapterConnection` cmdlet tests the connection in VMware Aria Operations.

## Examples

### Example 1

```powershell
Test-vROPSAdapterConnection [-json] <String> 
``
This example tests the connection based on the JSON file provided`

### Example 2
```powershell
Test-vROPSAdapterConnection [-json] <String> [-patch]
```

This example patches the adapter based on the response from the test in JSON format.

## Parameters

### -json

The JSON file to use for the test.

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

### -patch

Patch the adapter based on the response from the test.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
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
