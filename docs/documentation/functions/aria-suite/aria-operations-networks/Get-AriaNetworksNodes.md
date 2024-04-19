# Get-AriaNetworksNodes

## Synopsis

Get various details about the VMware Aria Operations for Networks nodes.

## Syntax

```powershell
Get-AriaNetworksNodes [-expandedNodes] [[-ipAddress] <String>] [<CommonParameters>]
```

## Description

The `Get-AriaNetworksNodes` cmdlet gets various details about the VMware Aria Operations for Networks nodes.
This is necessary in order to find out the id of a specified VMware Aria Operations for Networks collector node.

## Examples

### Example 1

```powershell
Get-AriaNetworksNodes
```

This example gets the ids of all of the collector nodes in a VMware Aria Operations for Networks deployment.

### Example 2

```powershell
Get-AriaNetworksNodes -ipAddress 192.168.31.41
```

This example gets the details of the collector node with the IP address 192.168.31.41

## Parameters

### -expandedNodes

Get list of infrastructure nodes with all details.

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

### -ipAddress

The IP address of the collector node to use for authentication.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
