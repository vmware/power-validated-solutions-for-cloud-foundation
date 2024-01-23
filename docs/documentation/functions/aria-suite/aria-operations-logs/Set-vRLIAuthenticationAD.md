# Set-vRLIAuthenticationAD

## Synopsis

Configure Active Directory as an authentication provider.

## Syntax

```powershell
Set-vRLIAuthenticationAD [-domain] <String> [-domainBindUser] <String> [-domainBindPass] <String>
 [-domainServers] <Array> [[-connectionType] <String>] [[-requireSsl] <Boolean>] [[-port] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-vRLIAuthenticationAD` cmdlet configures Active Directory as an authentication provider in VMware
Operations for Logs

## Examples

### Example 1

```powershell
Set-vRLIAuthenticationAD -domain sfo.rainpole.io -domainServers sfo-ad01.sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -connectionType STANDARD
This example configures Active Directory as an authentication provider
```

### Example 2

```powershell
Set-vRLIAuthenticationAD -domain sfo.rainpole.io -domainServers sfo-ad01.sfo.rainpole.io -domainBindUser svc-vsphere-ad -domainBindPass VMw@re1! -connectionType CUSTOM -port 636 -requireSsl:$true
This example configures Active Directory as an authentication provider using custom configuration.
```

## Parameters

### -domain

The domain name of the Active Directory server.

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

### -domainBindUser

The username of the Active Directory server.

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

### -domainBindPass

The password of the Active Directory server.

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

### -domainServers

The hostname of the Active Directory server.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -connectionType

The connection type of the Active Directory server. Valid values are STANDARD, GLOBAL_CAT, and CUSTOM.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -requireSsl

The SSL requirement of the Active Directory server.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -port

The port of the Active Directory server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: 389
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
