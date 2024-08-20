# Join-NsxtGlobalManagerCluster

## Synopsis

Join an NSX Global Manager to a cluster.

## Syntax

```powershell
Join-NsxtGlobalManagerCluster [-clusterId] <String> [-ipAddress] <String> [-username] <String> [-password] <String> [-thumbprint] <String> [<CommonParameters>]
```

## Description

The `Join-NsxtGlobalManagerCluster` cmdlet joins an NSX Global Manager to a cluster.

## Examples

### Example 1

```powershell
Join-NsxtGlobalManagerCluster -clusterId 7e5c5246-1569-4fb8-9bc7-79dd6963bead -ipAddress 172.20.11.82 -username admin -password VMw@re1!VMw@re1! -thumbprint 85:E1:AD:39:22:8D:4B:E4:A3:1C:27:E2:BF:F0:A9:45:8C:68:F0:FC:92:7B:A6:AA:04:F3:6F:46:EB:E6:B4:4B
```

This example joins an NSX Global Manager to a cluster.

## Parameters

### -clusterId

The ID of the cluster to join.

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

The IP address of the cluster to join.

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

### -username

The username to authenticate of the cluster to join.

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

### -password

The password to authenticate of the cluster to join.

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

### -thumbprint

The sha256 certificate thumbprint of the cluster to join.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
