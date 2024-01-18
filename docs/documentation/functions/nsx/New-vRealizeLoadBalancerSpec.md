# New-vRealizeLoadBalancerSpec

## Synopsis

Create vRealize Load Balancer Spec

## Syntax

```powershell
New-vRealizeLoadBalancerSpec [-xintSegmentDetails] <Array> [-serviceInterfaceIp] <Array>
 [-wsaDetailsObject] <Array> [[-vraDetailsObject] <Array>] [[-vropsDetailsObject] <Array>]
 [-wsaCertName] <String> [-t1Name] <String> [-lbName] <String> [-siName] <String> [-segmentID] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `New-vRealizeLoadBalancerSpec` cmdlet will build the vRealize Load Balancer Spec.

## Examples

### Example 1

```powershell
New-vRealizeLoadBalancerSpec [-xintSegmentDetails] <Array> [-serviceInterfaceIp] <Array>
 [-wsaDetailsObject] <Array> [[-vraDetailsObject] <Array>] [[-vropsDetailsObject] <Array>]
 [-wsaCertName] <String> [-t1Name] <String> [-lbName] <String> [-siName] <String> [-segmentID] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Parameters

### -lbName

Provide the x-reg load balancer name.

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

### -segmentID

Provide the x-reg segment ID name.

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

### -serviceInterfaceIp

Provide the x-reg load balancer service ip address.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -siName

Provide the x-reg load balancer service ip address name.

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

### -t1Name

Provide the x-reg load balancer tier 1 name.

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

### -vraDetailsObject

Provide the x-reg VMware Aria Automation virtual machine names.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -vropsDetailsObject

Provide the x-reg VMware Aria Operations virtual machine names.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -wsaCertName

Provide the x-reg VMware Aria WorkspaceOne certificate name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -wsaDetailsObject

Provide the x-reg VMware Aria WorkspaceOne virtual machine names.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -xintSegmentDetails

Provide the x-reg segment details.

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
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
