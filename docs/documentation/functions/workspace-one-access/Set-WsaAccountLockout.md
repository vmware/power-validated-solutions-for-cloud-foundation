# Set-WsaAccountLockout

## Synopsis

Set account lockout policy

## Syntax

```powershell
Set-WsaAccountLockout [-numAttempts] <String> [-attemptInterval] <String> [-unlockInterval] <String> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Set-WsaAccountLockout` cmdlet sets configuration of the account lockout policy for Workspace ONE Access.

## Examples

### Example 1

```powershell
Set-WsaAccountLockout -numAttempts 5 -attemptInterval 15 -unlockInterval 15
```

## Parameters

### -numAttempts

The number of attempts.

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

### -attemptInterval

The attempt interval.

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

### -unlockInterval

The unlock interval.

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
