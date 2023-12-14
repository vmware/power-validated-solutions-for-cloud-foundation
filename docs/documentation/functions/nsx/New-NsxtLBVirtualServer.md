# New-NsxtLBVirtualServer

## Synopsis

Creates a Load Balancer Virtual Server

## Syntax

```powershell
New-NsxtLBVirtualServer [-virtualServerName] <String> [-json] <String> [-ProgressAction <ActionPreference>]
 [<CommonParameters>]
```

## Description

The `New-NsxtLBVirtualServer` cmdlet creates a Load Balancer Virtual Server.

## Examples

### Example 1

```powershell
New-NsxtLBVirtualServer -virtualServerName -json
```

This example creates a Load Balancer Virtual Server.

## Parameters

### -virtualServerName

The name of the Load Balancer Virtual Server.

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

### -json

The JSON configuration for the Load Balancer Virtual Server.

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
