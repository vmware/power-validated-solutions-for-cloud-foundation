# Set-SrmConfiguration

## Synopsis

Set the vCenter Server registration

## Syntax

```powershell
Set-SrmConfiguration [-vcenterFqdn] <String> [-vcenterInstanceId] <String> [-ssoUser] <String>
 [-ssoPassword] <String> [-adminEmail] <String> [-siteName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-SrmConfiguration` cmdlet configures the vCenter Server registration for a Site Recovery Manager appliance.

## Examples

### Example 1

```powershell
Set-SrmConfiguration -vcenterFqdn sfo-m01-vc01.sfo.rainpole.io -vcenterInstanceId 6d6399d4-65ce-4e68-8009-ed8a4735b4a2 -ssoUser administrator@vsphere.local -ssoPassword VMw@re1! -adminEmail srm-administrator@rainpole.io -siteName SFO-M01
```

This example configures the vCenter Server registration with the vSphere Replication appliance.

## Parameters

### -vcenterFqdn

The vCenter Server FQDN for the vCenter Server registration.

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

### -vcenterInstanceId

The vCenter Server Instance ID for the vCenter Server registration.

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

### -ssoUser

The SSO user for the vCenter Server registration.

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

### -ssoPassword

The SSO password for the vCenter Server registration.

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

### -adminEmail

The administrator email for the vCenter Server registration.

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

### -siteName

The site name for the vCenter Server registration.

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
