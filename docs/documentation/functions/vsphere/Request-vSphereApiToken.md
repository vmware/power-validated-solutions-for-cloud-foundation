# Request-vSphereApiToken

## Synopsis

Request an authentication token for the vSphere REST API

## Syntax

```powershell
Request-vSphereApiToken [-fqdn] <String> [-username] <String> [-password] <String> [-admin]
 [[-inputObject] <PSObject>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-vSphereApiToken` cmdlet requests an authentication token for the vSphere REST API. Use -admin to set the Admin token for vCenter Server Management Interface.

## Examples

### Example 1

```powershell
Request-vSphereApiToken -Fqdn sfo-w01-vc01.sfo.rainpole.io -Username administrator@vsphere.local -Password VMw@re1!
```

This example requests a vSphere REST API authentication token for user <administrator@vsphere.local> from vCenter Server sfo-w01-vc01.sfo.rainpole.io

### Example 2

```powershell
Get-vCenterServerDetail -Server sfo-vcf01.sfo.rainpole.io -User administrator@vsphere.local -Pass VMw@re1! -Domain sfo-w01 | Request-vSphereApiToken
```

This example requests a vSphere REST API authentication token for user <administrator@vsphere.local> from the vCenter Server that manages VI workload domain sfo-w01.

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

### -admin

Use the Admin token for vCenter Server Management Interface.

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

### -inputObject

The vCenter Server object.

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
