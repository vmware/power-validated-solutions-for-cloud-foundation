# Undo-vRADeployment

## Synopsis

Remove the VMware Aria Automation from VMware Aria Suite Lifecycle.

## Syntax

```powershell
Undo-vRADeployment [-server] <String> [-user] <String> [-pass] <String> [[-environmentName] <String>]
 [-monitor] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-vRADeployment` cmdlet removes VMware Aria Automation from VMware Aria Suite Lifecycle.

The cmdlet connects to SDDC Manager using the -server, -user, and -password values.

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to VMware Aria Suite Lifecycle
- Validates that the environment exist in VMware Aria Suite Lifecycle
- Requests a the deletion of VMware Aria Automation from VMware Aria Suite Lifecycle

## Examples

### Example 1

```powershell
Undo-vRADeployment -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -environmentName xint-env
```

This example starts a removal of VMware Aria Automation from VMware Aria Suite Lifecycle.

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

### -environmentName

The VMware Aria Automation Environment Name.

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

### -monitor

Monitor the VMware Aria Suite Lifecycle request.

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
