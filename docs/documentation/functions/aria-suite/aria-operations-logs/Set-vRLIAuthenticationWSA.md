# Set-vRLIAuthenticationWSA

## Synopsis

Configure Workspace ONE Access Intergration

## Syntax

```powershell
Set-vRLIAuthenticationWSA [-hostname] <String> [-port] <String> [-redirectUrl] <String> [-username] <String>
 [-password] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRLIAuthenticationWSA` cmdlet configures the Workspace ONE Access Integration.

## Examples

### Example 1

```powershell
Set-vRLIAuthenticationWSA -hostname sfo-wsa01.sfo.rainpole.io -port 443 -redirectUrl sfo-vrli01.sfo.rainpole.io -username admin -password VMw@re1!
```

This example configures Workspace ONE Access Integration.

## Parameters

### -hostname

The hostname of the Workspace ONE Access appliance.

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

### -port

The port of the Workspace ONE Access appliance.

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

### -redirectUrl

The redirect URL of the Workspace ONE Access appliance.

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

### -username

The username of the Workspace ONE Access appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -password

The password of the Workspace ONE Access appliance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
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
