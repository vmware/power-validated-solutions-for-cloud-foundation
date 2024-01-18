# Connect-SrmRemoteSession

## Synopsis

Instantiates a connection to the remote Site Recovery Manager instance.

## Syntax

```powershell
Connect-SrmRemoteSession [[-username] <String>] [[-password] <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Connect-SrmRemoteSession` cmdlet instantiates a connection to the remote Site Recovery Manager instance.

## Examples

### Example 1

```powershell
Connect-SrmRemoteSession -username administrator@vsphere.local -password VMw@re1!
```

This example instantiates a connection to the remote Site Recovery Manager instance.

## Parameters

### -username

The username to authenticate to the remote Site Recovery Manager instance.

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

### -password

The password to authenticate to the remote Site Recovery Manager instance.

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
