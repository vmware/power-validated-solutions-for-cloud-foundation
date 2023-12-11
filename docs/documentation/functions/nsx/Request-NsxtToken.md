# Request-NsxtToken

## Synopsis

Connects to the specified NSX Manager

## Syntax

```powershell
Request-NsxtToken [[-fqdn] <String>] [[-username] <String>] [[-password] <String>] [[-inputObject] <PSObject>]
 [-skipCertificateCheck] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-NsxtToken` cmdlet connects to the specified NSX Manager with the supplied credentials.

## Examples

### Example 1

```powershell
Request-NsxtToken -fqdn sfo-w01-nsx01.sfo.rainpole.io -username admin -password VMw@re1!VMw@re1!
```

This example shows how to connect to NSX Manager

### Example 2

```powershell
Get-NsxtServerDetail -fqdn sfo-vcf01.sfo.rainpole.io -username admin@local -password VMw@re1!VMw@re1! -domain sfo-w01 | Request-NsxtToken
```

This example shows how to connect to NSX Manager using pipeline input from Get-NsxtServerDetail.

## Parameters

### -fqdn

The FQDN of the NSX Manager.

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

The username of the NSX Manager.

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

The password of the NSX Manager.

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

### -inputObject

The input object from Get-NsxtServerDetail.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -skipCertificateCheck

Skip the certificate check.

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
