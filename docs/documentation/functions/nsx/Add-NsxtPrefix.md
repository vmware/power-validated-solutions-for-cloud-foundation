# Add-NsxtPrefix

## Synopsis

Add a single entry to an existing NSX IP Prefix List

## Syntax

```powershell
Add-NsxtPrefix [[-prefixListName] <String>] [[-tier0Gateway] <String>] [[-subnetCIDR] <String>]
 [[-GE] <String>] [[-LE] <String>] [[-action] <String>] [[-inputObject] <PSObject>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-NsxtPrefix` cmdlet adds a single entry to an existing NSX IP Prefix List.

## Examples

### Example 1

```powershell
Get-NsxtPrefixList -name sfo-w01-cl01-prefix-list | Add-NsxtPrefix -subnetCIDR 192.168.21.0/24 -LE 32 -GE 28 -action PERMIT
```

This example adds an IP Prefix entry on an existing IP Prefix List.

## Parameters

### -prefixListName

The IP Prefix List name.

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

### -tier0Gateway

The Tier-0 Gateway name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -subnetCIDR

The subnet CIDR.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -GE

The greater than or equal to value.

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

### -LE

The less than or equal to value.

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

### -action

The action (PERMIT or DENY).

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -inputObject

The Tier-0 Gateway object.

```yaml
Type: PSObject
Parameter Sets: (All)
Aliases:

Required: False
Position: 7
Default value: None
Accept pipeline input: True (ByValue)
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
