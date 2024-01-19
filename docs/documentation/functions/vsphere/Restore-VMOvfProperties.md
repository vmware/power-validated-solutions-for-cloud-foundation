# Restore-VMOvfProperties

## Synopsis

Restores the OVF properties for each provided virtual machine.

## Syntax

```powershell
Restore-VMOvfProperties [-server] <String> [-user] <String> [-pass] <String> [[-fileDir] <String>]
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Restore-VMOvfProperties` cmdlet creates a backup of the OVF properties for each supplied VM.

The cmdlet connects to SDDC Manager using the -server, -user, and -password values to retrieve the DR protected VMs from its inventory and then:

- Creates a restore of the VM OVF properties.

## Examples

### Example 1

```powershell
Restore-VMOvfProperties -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1!
```

This example creates a backup of the OVF properties for each supplied VM.

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

### -fileDir

The directory where the OVF property backup files are stored.

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
