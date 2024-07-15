# Install-VamiCertificate

## Synopsis

Install a new certificate for a VAMI interface

## Syntax

```powershell
Install-VamiCertificate [-server] <String> [-user] <String> [-pass] <String> [[-certFile] <String>] [-certPassword] <String> [-solution] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Install-VamiCertificate` cmdlet allows you to replace the certificate of a VAMI interface.
Supports:

- vSphere Replication appliance
- Site Recovery Manager appliance

## Examples

### Example 1

```powershell
Install-VamiCertificate -server sfo-m01-vrms01.sfo.rainpole.io -user admin -pass VMw@re1! -certFile C:\Certs\sfo-m01-vrms01.4.p12 -certPassword VMw@re1! -solution VRMS
```

This example replaces the certificate for the VAMI interface of the vSphere Replication

### Example 2

```powershell
Install-VamiCertificate -server sfo-m01-srm01.sfo.rainpole.io -user admin -pass VMw@re1! -certFile C:\Certs\sfo-m01-vrms01.4.p12 -certPassword VMw@re1! -solution SRM
```

This example replaces the certificate for the VAMI interface of the Site Recovery Manager appliance.

## Parameters

### -server

The FQDN of the vSphere Replication or Site Recovery Manager Virtual Appliance.

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

### -user

The admin username of the vSphere Replication or Site Recovery Manager Virtual Appliance.

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

### -pass

The admin password of the vSphere Replication or Site Recovery Manager Virtual Appliance.

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

### -certFile

The path to the certificate file (.p12).

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

### -certPassword

The password of the certificate file (.p12).

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

### -solution

The solution to register with the vCenter Server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 6
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
