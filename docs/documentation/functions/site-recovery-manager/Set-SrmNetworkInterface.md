# Set-SrmNetworkInterface

## Synopsis

Set network interface configuration

## Syntax

```powershell
Set-SrmNetworkInterface [-interface] <String> [-ipAddress] <String> [-gateway] <String> [-prefix] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-SrmNetworkInterface` cmdlet configures the network interface of a Site Recovery Manager appliance.

## Examples

### Example 1

```powershell
Set-SrmNetworkInterface -interface eth0 -ipAddress 172.18.95.126 -gateway 172.18.95.1 -prefix 24
```

This example configures the network interface of the Site Recovery Manager appliance.

## Parameters

### -interface

The interface parameter The network interface to configure.

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

### -ipAddress

The ipAddress parameter The IP address to configure.

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

### -gateway

The gateway parameter The gateway to configure.

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

### -prefix

The prefix parameter The prefix to configure.

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
