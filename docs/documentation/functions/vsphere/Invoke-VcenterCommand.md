# Invoke-VcenterCommand

## Synopsis

Invoke a command line operation on vCenter Server

## Syntax

```powershell
Invoke-VcenterCommand [-server] <String> [-user] <String> [-pass] <String> [-domain] <String> [-command] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Invoke-VcenterCommand` cmdlet allows you to invoke any command line operation on a vCenter Server managed by SDDC Manager.

## Examples

### Example 1

```powershell
Invoke-VcenterCommand -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -command "ip -s -s neigh flush all"
```

This example invokes the command to flush the ARP table for the vCenter Server of a given workload domain.

## Parameters

### -server

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

### -user

The vCenter Server SSO Administrator username.

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

The vCenter Server SSO Administrator password.

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

The vCenter Server SSO Administrator domain.

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

### -command

The command to be executed on the vCenter Server.

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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
