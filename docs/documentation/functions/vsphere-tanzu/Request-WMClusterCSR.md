# Request-WMClusterCSR

## Synopsis

Request Certificate Signing Request filr

## Syntax

```powershell
Request-WMClusterCSR [-cluster] <String> [-commonName] <String> [-organization] <String> [-organizationalUnit] <String> [-country] <String> [-stateOrProvince] <String> [-locality] <String> [-adminEmailAddress] <String> [[-keySize] <String>] [-filePath] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Request-WMClusterCSR` cmdlet requests a Certificate Signing Request file for the Supervisor Cluster.

## Examples

### Example 1

```powershell
Request-WMClusterCSR -cluster sfo-w01-cl01 -commonName sfo-w01-cl01.sfo.rainpole.io -organization Rainpole -organizationalUnit Rainpole -country US -stateOrProvince California -locality "Palo Alto" -adminEmailAddress admin@rainpole.io -keySize 2048 -filePath ".\SupervisorCluster.csr"
```

This example requests a Certificate Signing Request file for the Supervisor Cluster sfo-w01-cl01.

## Parameters

### -cluster

The name of the Supervisor Cluster.

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

### -commonName

The common name of the Supervisor Cluster.

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

### -organization

The organization name of the Supervisor Cluster.

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

### -organizationalUnit

The organizational unit name of the Supervisor Cluster.

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

### -country

The country of the Supervisor Cluster.

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

### -stateOrProvince

The state or province of the Supervisor Cluster.

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

### -locality

The locality of the Supervisor Cluster.

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

### -adminEmailAddress

The email address of the Supervisor Cluster administrator.

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

### -keySize

The key size of the Supervisor Cluster.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -filePath

The path to the Certificate Signing Request file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 10
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
