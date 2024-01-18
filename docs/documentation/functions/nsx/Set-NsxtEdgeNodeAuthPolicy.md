# Set-NsxtEdgeNodeAuthPolicy

## Synopsis

Set the Authentication Policy for NSX Edge Nodes

## Syntax

```powershell
Set-NsxtEdgeNodeAuthPolicy [-nsxtManager] <String> [-nsxtEdgeNodeID] <String> [[-cli_lockout_period] <Int32>]
 [[-cli_max_attempt] <Int32>] [[-min_passwd_length] <Int32>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-NsxtEdgeNodeAuthPolicy` cmdlet sets the authentication policy for NSX Edge Nodes.

## Examples

### Example 1

```powershell
Set-NsxtEdgeNodeAuthPolicy -nsxtManager <String> -nsxtEdgeNodeID <String> -cli_lockout_period 900 -cli_max_attempt 5 -min_passwd_length 15
```

This example configures the password policy in NSX Edge node sfo-m01-nsx01a.sfo.rainpole.io.

## Parameters

### -nsxtManager

The NSX Manager Node name.

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

### -nsxtEdgeNodeID

The NSX Edge Node ID.

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

### -cli_lockout_period

The CLI lockout period in seconds.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -cli_max_attempt

The CLI max attempts.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### -min_passwd_length

The minimum password length.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 5
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
