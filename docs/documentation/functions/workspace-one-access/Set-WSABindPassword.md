# Set-WSABindPassword

## Synopsis

Create an LDAP directory

## Syntax

```powershell
Set-WSABindPassword [-directoryId] <String> [-connectorId] <String> [-pass] <String>
 [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-WSABindPassword` cmdlets creates a new LDAP Active Directory connection in Workspace ONE Access.

## Examples

### Example 1

```powershell
Set-WSABindPassword -directoryId a1c985d5-0eeb-4a66-bc51-11eda9321aac -connectorId 59ee9717-a09e-45b6-9e5f-8d92a55a1825 -password VMw@re1!
```

This example creates a new LDAP Active Directory connection in Workspace ONE Access.

## Parameters

### -directoryId

The directory ID.

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

### -connectorId

The connector ID.

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

The bind password.

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
