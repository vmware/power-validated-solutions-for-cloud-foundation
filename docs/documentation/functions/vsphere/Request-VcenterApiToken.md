# Request-VcenterApiToken

## Synopsis

Request an authentication token for the vCenter Server REST API

## Syntax

```powershell
Request-VcenterApiToken [-fqdn] <String> [-username] <String> [-password] <String> [-skipCertificateCheck] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-VcenterApiToken` cmdlet requests an authentication token for the vCenter Server REST API.

## Examples

### Example 1

```powershell
Request-VcenterApiToken -fqdn sfo-w01-vc01.sfo.rainpole.io -username administrator@vsphere.local -password VMw@re1!
```

This example requests a vCenter Server REST API authentication token for user <administrator@vsphere.local> from vCenter Server sfo-w01-vc01.sfo.rainpole.io.

## Parameters

### -fqdn

The vCenter Server FQDN.

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

The vCenter Server administrator username.

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

### -password

The vCenter Server administrator password.

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

### -skipCertificateCheck

Skip SSL certificate check.

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
