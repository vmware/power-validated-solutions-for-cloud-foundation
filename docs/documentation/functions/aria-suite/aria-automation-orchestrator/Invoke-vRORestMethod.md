# Invoke-vRORestMethod

## Synopsis

A wrapper for Invoke-RestMethod for use with VMware Aria Automation Orchestrator

## Syntax

```powershell
Invoke-vRORestMethod [-method] <String> [-uri] <String> [[-body] <Object>] [[-outFile] <String>] [-webRequest] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-RestMethod` cmdlet is a wrapper for Invoke-RestMethod use with VMware Aria Automation Orchestrator.

## Examples

### Example 1

```powershell
Invoke-vRORestMethod -Method 'GET' -Uri '/vco/api/workflows'
```

### Example 2

```powershell
$method = "POST"
$uri = "/vco/api/workflows/$($ID)/executions/"
$body =  @"
{"parameters":
    [
        {
            "value": {"string":{ "value": "bar"}},
            "type": "string",
            "name": "foo",
            "scope": "local"
        },
        {
            "value": {"number":{ "value": 2022}},
            "type": "number",
            "name": "bar",
            "scope": "local"
        }
    ]
}
"@
Invoke-vRORestMethod -method $method -uri $uri -body $body -webRequest
```

## Parameters

### -method

The HTTP method to use. Valid values are GET, POST, PUT, and DELETE.

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

### -uri

The URI to send the request to.

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

### -body

The body of the request.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -outFile

The file to write the response to.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -webRequest

Use Invoke-WebRequest instead of Invoke-RestMethod.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
