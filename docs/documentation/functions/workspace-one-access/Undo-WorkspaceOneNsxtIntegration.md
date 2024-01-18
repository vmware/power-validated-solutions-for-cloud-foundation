# Undo-WorkspaceOneNsxtIntegration

## Synopsis

Disables the integrate between NSX Manager with Workspace ONE Access

## Syntax

```powershell
Undo-WorkspaceOneNsxtIntegration [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-wsaFqdn] <String> [-wsaUser] <String> [-wsaPass] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Undo-WorkspaceOneNsxtIntegration` cmdlet disables integration between NSX Manager and Workspace ONE Access.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to NSX Manager cluster
- Disables the integration between NSX Manager and Workspace ONE Access.

## Examples

### Example 1

```powershell
Undo-WorkspaceOneNsxtIntegration -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-m01 -wsaFqdn sfo-wsa01.sfo.rainpole.io -wsaUser admin -wsaPass VMw@re1!
```

This example disables the integration between NSX Manager with Workspace ONE Access.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

The username to authenticate to the SDDC Manager.

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

The password to authenticate to the SDDC Manager.

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

### -domain

The name of the Management Domain.

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

### -wsaFqdn

The FQDN of the Workspace ONE Access Virtual Appliance.

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

### -wsaUser

The admin username of the Workspace ONE Access Virtual Appliance.

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

### -wsaPass

The admin password of the Workspace ONE Access Virtual Appliance.

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
