# Add-CEPvCenterServer

## Synopsis

Adds a vCenter Server instance to an embedded VMware Aria Automation Orchestrator.

## Syntax

```powershell
Add-CEPvCenterServer [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-environment] <String> [-apiToken] <String> [-extensibilityProxy] <String> [-serviceAccount] <String>
 [-servicePassword] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-vROvCenterServer` cmdlet invokes the workflow in VMware Aria Automation Orchestrator to add a vCenter
Server.
The cmdlet connects to SDDC Manager using the -server, -user, -password, and -domain values to return
the workload domain vCenter Server details from its inventory and then:

- Makes a connection to the Cloud Extensibility Proxy VMware Aria Automation Orchestrator instance using the -apiToken.
- Verifies the workflow exists.
- Adds the vCenter Server instance using the -serviceAccount and -servicePassword values.

## Examples

### Example 1

```powershell
Add-CEPvCenterServer -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -apiToken <string> -environment staging -extensibilityProxy sfo-vmc-cep01.sfo.rainpole.io -serviceAccount svc-vro-vsphere@sfo.rainpole.io -servicePassword VMw@re1!
```

This example adds the vCenter Server instance from the "sfo-w01" workload domain to the Cloud Extensibility Proxy VMware Aria Automation Orchestrator instance.

## Parameters

### -server

The vCenter Server FQDN or IP address.

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

The vCenter Server user account.

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

The vCenter Server user account password.

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

The vCenter Server domain.

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

### -environment

The VMware Cloud Services environment.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: Production
Accept pipeline input: False
Accept wildcard characters: False
```

### -apiToken

The VMware Cloud Services API token.

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

### -extensibilityProxy

The Cloud Extensibility Proxy FQDN or IP address.

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

### -serviceAccount

The vCenter Server service account.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -servicePassword

The vCenter Server service account password.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 9
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
