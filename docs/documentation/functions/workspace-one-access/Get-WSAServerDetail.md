# Get-WSAServerDetail

## Synopsis

Get Workspace ONE Access details from SDDC Manager

## Syntax

```powershell
Get-WSAServerDetail [[-fqdn] <String>] [[-username] <String>] [[-password] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-WSAServerDetail` cmdlet retrieves the FQDN, Virtual IP and Node IP Addresses of Workspace ONE Access
from SDDC Manager.

## Examples

### Example 1

```powershell
Get-WSAServerDetail -fqdn sfo-vcf01.sfo.rainpole.io -username admin@local -password VMw@re1!VMw@re1!
```

This example retrieves the Workspace ONE Access details from SDDC Manager.

## Parameters

### -fqdn

The SDDC Manager FQDN.

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

### -username

The SDDC Manager administrator username.

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

### -password

The SDDC Manager administrator password.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
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
