# Test-VrSdkAuthentication

## Synopsis

Check authentication to a vSphere Replication instance.

## Syntax

```powershell
Test-VrSdkAuthentication [-server] <String> [-user] <String> [-pass] <String> [[-remoteServer] <String>] [[-remoteUser] <String>] [[-remotePass] <String>] [<CommonParameters>]
```

## Description

The `Test-VrSdkAuthentication` cmdlet checks authentication to a vSphere Replication instance using the PowerCLI cmdlet Connect-VrServer.

## Examples

### Example 1

```powershell
Test-VrSdkAuthentication -server sfo-m01-vrms01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1!
```

This example checks authentication with a vSphere Replication instance.

### Example 2

```powershell
Test-VrSdkAuthentication -server sfo-m01-vrms01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -RemoteServer lax0-m01-vrms01.lax.rainpole.io -remoteUser administrator@vsphere.local -remotePass VMw@re1!
```

This example checks authentication with a vSphere Replication instance and a remote vSphere Replication instance.

## Parameters

### -server

The fully qualified domain name of the vSphere Replication instance.

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

The username to authenticate to the vSphere Replication instance.

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

The password to authenticate to the vSphere Replication instance.

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

### -remoteServer

The fully qualified domain name of the remote vSphere Replication instance.

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

The username to authenticate to the remote vSphere Replication instance.

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

### -remotePass

The password to authenticate to the remote vSphere Replication instance.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
