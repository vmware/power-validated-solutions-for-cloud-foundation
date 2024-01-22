# Undo-DRSolutionTovCenter

## Synopsis

Remove registration of Site Recovery Manager or vSphere Replication with vCenter Server

## Syntax

```powershell
Undo-DRSolutionTovCenter [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-applianceFqdn] <String> [-vamiAdminPassword] <String> [-solution] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-DRSolutionTovCenter` cmdlet removes registration of Site Recovery Manager or vSphere Replication with
a vCenter Server.
The cmdlet connects to SDDC Manager using the -server, -user, and -password:

- Validates that network connectivity and authentication is possible to the SDDC Manager instance
- Validates that network connectivity and authentication is possible to the vCenter Server instance
- Validates that network connectivity and authentication is possible to the vSphere Replication or Site
Recovery Manaeger instance
- Validates if the solution is registerd and if so proceeds to unregister.

## Examples

### Example 1

```powershell
Undo-DRSolutionTovCenter -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -applianceFqdn sfo-m01-srm01.sfo.rainpole.io -vamiAdminPassword VMw@re1! -solution SRM 
```

This example registers Site Recovery Manager with the vCenter Server of the Management Domain

### Example 2

```powershell
Undo-DRSolutionTovCenter -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -applianceFqdn sfo-m01-vrms01.sfo.rainpole.io -vamiAdminPassword VMw@re1! -solution VRMS 
```

This example registers Site Recovery Manager with the vCenter Server of the Management Domain.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

The username to authenticate to the SDDC Manager.

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

The password to authenticate to the SDDC Manager.

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

### -domain

The name of the Management Domain.

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

### -applianceFqdn

The FQDN of the vSphere Replication or Site Recovery Manager Virtual Appliance.

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

### -vamiAdminPassword

The admin password of the vSphere Replication or Site Recovery Manager Virtual Appliance.

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

### -solution

The solution to register with the vCenter Server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 7
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
