# Add-SrmRecoveryPlanCalloutStep

## Synopsis

Adds a callout step in a named recovery plan from a Site Recovery Manager instance.

## Syntax

```powershell
Add-SrmRecoveryPlanCalloutStep [-rpName] <String> [-calloutType] <String> [-calloutName] <String>
 [-content] <String> [-position] <Int32> [[-timeoutSeconds] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-SrmRecoveryPlanCalloutStep` cmdlet adds steps in a named recovery plan from a Site Recovery Manager
server.

## Examples

### Example 1

```powershell
Add-SrmRecoveryPlanCalloutStep -rpName xint-vrops01-rp -calloutType PROMPT -calloutName "Power on the VMware Aria Operations cloud proxies" -content "Power on the VMware Aria Operations cloud proxies" -position 15 -timeoutSeconds 30
```

This example retrieves all recovery plans from a Site Recovery Manager instance.

## Parameters

### -rpName

The name of the recovery plan to modify.

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

### -calloutType

The type of callout to add (prompt, runOnVM, runOnSRMServer).

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

### -calloutName

The name of the callout.

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

### -content

The message to be displayed in the callout.

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

### -position

The position in the current recovery steps list.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -timeoutSeconds

Time in seconds to wait until the command completes.
Only applicable when the parameter calloutType is set to runOnVM or runOnSRMServer.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: 0
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
