# Request-SrmTokenREST

## Synopsis

Connects to the specified Site Recovery Manager appliance. and obtains an authorization token using the REST
API.

## Syntax

```powershell
Request-SrmTokenREST [-fqdn] <String> [[-username] <String>] [[-password] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-SrmToken` cmdlet connects to the specified Site Recovery Manager and obtains an authorization token.

It is required once per session before running all other cmdlets.

This authorization is separate from the VAMI token acquired using `Request-SrmToken`.

## Examples

### Example 1

```powershell
Request-SrmTokenREST -fqdn sfo-m01-srm01.sfo.rainpole.io -username administrator@vsphere.local -password VMw@re1!
```

This example shows how to connect to the Site Recovery Manager REST API using a vCenter Server SSO user.

## Parameters

### -fqdn

The fully qualified domain name of the Site Recovery Manager REST API server.

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

The username to authenticate to the Site Recovery Manager REST API server.

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

The password to authenticate to the Site Recovery Manager REST API server.

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

{{ Fill ProgressAction Description }}

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
