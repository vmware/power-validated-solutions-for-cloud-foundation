# Get-NsxtServerDetail

## Synopsis

Get NSX details from SDDC Manager

## Syntax

```powershell
Get-NsxtServerDetail [[-fqdn] <String>] [[-username] <String>] [[-password] <String>] [[-domain] <String>]
 [[-domainType] <String>] [-listNodes] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-NsxtServerDetail` cmdlet retrieves the FQDN, root and admin credentials of NSX for a given
Workload Domain.

## Examples

### Example 1

```powershell
Get-NsxtServerDetail -fqdn sfo-vcf01.sfo.rainpole.io -username admin@local -password VMw@re1!VMw@re1! -domainType MANAGEMENT
```

This example retrieves the vCenter Server details for the Workload Domain with a type of MANAGEMENT

### Example 2

```powershell
Get-NsxtServerDetail -fqdn sfo-vcf01.sfo.rainpole.io -username admin@local -password VMw@re1!VMw@re1! -domain sfo-w01
```

This example retrieves the vCenter Server details for the Workload Domain sfo-w01.

## Parameters

### -fqdn

The SDDC Manager FQDN.

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

### -username

The SDDC Manager administrator username.

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

### -password

The SDDC Manager administrator password.

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

### -domain

The name of the workload domain to run against.

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

### -domainType

The Workload Domain type.

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

### -listNodes

List NSX nodes.

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
