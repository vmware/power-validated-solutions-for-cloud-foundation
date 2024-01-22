# Test-vRAIntegrationItem

## Synopsis

Test an Integration Item in VMware Aria Automation

## Syntax

```powershell
Test-vRAIntegrationItem [-integrationType] <String> [-integrationName] <String> [-integrationUser] <String>
 [-integrationPassword] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Test-vRAIntegrationItem` cmdlet validates the given credential and certificate of an intergarion item.

## Examples

### Example 1

```powershell
Test-vRAIntegrationItem -integrationType "vrops" -integrationName "VMware Aria Operations" -integrationUser "svc-vra-vrops@sfo.rainpole.io@vIDMAuthSource" -integrationPassword "VMw@re1!"   
```

This example validates VMware Aria Operations integration in VMware Aria Automation.

## Parameters

### -integrationType

The type of integration to be tested. Valid values are vrops.

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

### -integrationName

The name of the integration to be tested.

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

### -integrationUser

The username of the integration to be tested.

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

### -integrationPassword

The password of the integration to be tested.

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
