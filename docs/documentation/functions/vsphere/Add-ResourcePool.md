# Add-ResourcePool

## Synopsis

Create a resource pool

## Syntax

```powershell
Add-ResourcePool [-server] <String> [-user] <String> [-pass] <String> [-domain] <String>
 [-resourcePoolName] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-ResourcePool` cmdlet creates a resource pool.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values
to retrive the vCenter Server details from the SDDC Manager inventory and then:

- Connects to the vCenter Server
- Verifies that the resource pool has not already been created
- Creates the resource pool.

## Examples

### Example 1

```powershell
Add-ResourcePool -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -resourcePoolName "sfo-w01-cl01-rp-workload"
```

This example shows how to create the folder myFolder within the VMware Cloud Foundation domain sfo-m01.

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

The VMware Cloud Foundation domain name.

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

### -resourcePoolName

The name of the resource pool to create.

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
