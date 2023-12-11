# Undo-NsxtNodeProfileSyslogExporter

## Synopsis

Removes all syslog exporters on an NSX node profile.

## Syntax

```powershell
Undo-NsxtNodeProfileSyslogExporter [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [[-id] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-NsxtNodeProfileSyslogExporter` cmdlet removes a syslog exporter for VMware Aria Operations for Logs from
an NSX node profile for configuration of syslog on the NSX components included in the node profile.
The cmdlet connects to SDDC Manager using the -server, -user, -password, and -domain values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to NSX Manager
- Removes all syslog exporters on the default (All NSX Nodes) or specified node profile for NSX.

## Examples

### Example 1

```powershell
Undo-NsxtNodeProfileSyslogExporter -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01
```

This example removes all syslog exporters from the default (All NSX Nodes) node profile.

### Example 2

```powershell
Undo-NsxtNodeProfileSyslogExporter -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -id "********-****-****-****-************"
```

This example removes all syslog exporters from a specific node profile with the -id parameter.

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

The username used to authenticate to SDDC Manager.

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

The password used to authenticate to SDDC Manager.

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

The name of the workload domain to run against.

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

### -id

The NSX node profile ID to remove the syslog exporter from.
If not specified, the default (All NSX Nodes) node profile is used.

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
