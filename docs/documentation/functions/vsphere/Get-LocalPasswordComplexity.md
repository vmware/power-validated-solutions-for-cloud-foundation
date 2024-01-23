# Get-LocalPasswordComplexity

## Synopsis

Get password complexity for local users

## Syntax

```powershell
Get-LocalPasswordComplexity -vmName <String> -guestUser <String> -guestPassword <String> [-nsx]
 [-product <String>] [-drift] [-version <String>] [-reportPath <String>] [-policyFile <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Get-LocalPasswordComplexity` cmdlets retrieves the password complexity for local users.

## Examples

### Example 1

```powershell
Get-LocalPasswordComplexity -vmName sfo-w01-vc01 -guestUser root -guestPassword VMw@re1!
```

This example retrieves the vCenter Server sfo-w01-vc01 password complexity

### Example 2

```powershell
Get-LocalPasswordComplexity -vmName sfo-w01-nsx01a -guestUser root -guestPassword VMw@re1!VMw@re1! -nsx
```

This example retrieves the NSX Manager sfo-w01-nsx01a password complexity

### Example 3

```powershell
Get-LocalPasswordComplexity -vmName sfo-vcf01 -guestUser root -guestPassword VMw@re1!
```

This example retrieves the SDDC Manager sfo-vcf01 password complexity

### Example 4

```powershell
Get-LocalPasswordComplexity -vmName sfo-wsa01 -guestUser root -guestPassword VMw@re1!
```

This example retrieves the Workspace ONE Access sfo-wsa01 password complexity

### Example 5

```powershell
Get-LocalPasswordComplexity -vmName sfo-wsa01 -guestUser root -guestPassword VMw@re1! -drift -product wsaLocal -reportPath "F:\Reporting" -policyFile "passwordPolicyConfig.json"
```

This example retrieves the Workspace ONE Access sfo-wsa01 password complexity and checks the configuration drift using the provided configuration JSON

### Example 6

```powershell
Get-LocalPasswordComplexity -vmName sfo-wsa01 -guestUser root -guestPassword VMw@re1! -drift -product wsaLocal
```

This example retrieves the Workspace ONE Access sfo-wsa01 password complexity and compares the configuration against the product defaults.

## Parameters

### -vmName

The virtual machine name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -guestUser

The guest user name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -guestPassword

The guest user password.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -nsx

The NSX Manager flag.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -product

The product name.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -drift

The configuration drift flag.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -version

The product version.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -reportPath

The report path.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -policyFile

The policy file.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
