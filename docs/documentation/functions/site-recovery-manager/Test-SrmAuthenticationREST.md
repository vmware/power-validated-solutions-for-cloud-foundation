# Test-SrmAuthenticationREST

## Synopsis

Check authentication to a Site Recovery Manager REST API.

## Syntax

```powershell
Test-SrmAuthenticationREST [-server] <String> [-user] <String> [-pass] <String> [[-remoteUser] <String>] [[-remotePass] <String>] [-ProgressAction <ActionPreference> [<CommonParameters>]
```

## Description

The `Test-SrmAuthenticationREST` cmdlet checks the authentication to a Site Recovery Manager instance REST API.

## Examples

### Example 1

```powershell
Test-SrmAuthenticationREST -server sfo-m01-srm01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1!
```

This example checks authentication with a Site Recovery Manager instance REST API.

### Example 2

```powershell
Test-SrmAuthenticationREST -server sfo-m01-srm01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -remoteUser administrator@vsphere.local -remotePass VMw@re1!
```

This example checks authentication with a Site Recovery Manager instance and a remote Site Recovery Manager instance REST API.

## Parameters

### -pass

The password to authenticate to the Site Recovery Manager instance.

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

### -remotePass

The password to authenticate to the remote Site Recovery Manager instance.

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

### -remoteUser

The username to authenticate to the remote Site Recovery Manager instance.

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

### -server

The fully qualified domain name of the Site Recovery Manager instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -user

The username to authenticate to the Site Recovery Manager instance.

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

### CommonParameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
