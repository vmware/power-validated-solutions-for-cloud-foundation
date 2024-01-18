# Update-SddcDeployedFlavor

## Synopsis

Add a Validated Solution tag

## Syntax

```powershell
Update-SddcDeployedFlavor [-server] <String> [-user] <String> [-pass] <String> [-vvsTag] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Update-SddcDeployedFlavor` cmdlet adds a Validated Solution tag to the vCenter Server Advanced Setting
\`config.SDDC.Deployed.Flavor\`.
The cmdlet connects to SDDC Manager using the -server, -user, and -password
values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Adds a Validated Solution tag to the vCenter Server Advanced Setting \`config.SDDC.Deployed.Flavor\`.

## Examples

### Example 1

```powershell
Update-SddcDeployedFlavor -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -vvsTag IAM
```

This example adds the IAM tag to the `config.SDDC.Deployed.Flavor` vCenter Server Advanced Setting.

## Parameters

### -server

The vCenter Server FQDN.

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

### -user

The vCenter Server SSO Administrator username.

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

### -pass

The vCenter Server SSO Administrator password.

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

### -vvsTag

The Validated Solution tag to be added to the vCenter Server Advanced Setting \`config.SDDC.Deployed.Flavor\`.

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

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
