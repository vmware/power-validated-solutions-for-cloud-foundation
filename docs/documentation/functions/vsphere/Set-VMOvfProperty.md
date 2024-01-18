# Set-VMOvfProperty

## Synopsis

Sets OVF properties on a virtual appliance.

## Syntax

```powershell
Set-VMOvfProperty [-vm] <PSObject> [-properties] <Hashtable> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

Accepts a hash table with property ID and value and sets the defined OVF property and value for a virtual
appliance.

## Examples

### Example 1

```powershell
Set-VMOvfProperty -vm (Get-VM -Name xreg-wsa01a) -Properties @{"DNS"="172.16.11.4,172.16.11.5"}
```

This example sets the DNS servers to 172.16.11.4 and 172.16.11.5 in the OVF properties for xreg-wsa01a.

## Parameters

### -vm

The virtual appliance to set the OVF properties on.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -properties

A hash table of OVF properties to set on the virtual appliance.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
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
