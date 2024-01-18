# Request-SrmToken

## Synopsis

Connects to the specified Site Recovery Manager Appliance and obtains an authorization token

## Syntax

```powershell
Request-SrmToken [-fqdn] <String> [[-username] <String>] [[-password] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-SrmToken` cmdlet connects to the specified Site Recovery Manager and obtains an authorization
token. It is required once per session before running all other cmdlets.

## Examples

### Example 1

```powershell
Request-SrmToken -fqdn sfo-m01-srm01.sfo.rainpole.io -username admin -password VMw@re1!
```

This example shows how to connect to a Site Recovery Manager appliance.

## Parameters

### -fqdn

The fqdn parameter The fully qualified domain name of the Site Recovery Manager appliance.

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

### -username

The username parameter The username to use to connect to the Site Recovery Manager appliance.

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

The password parameter The password to use to connect to the Site Recovery Manager appliance.

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
