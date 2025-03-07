# Test-NsxtGlobalManagerCertificate

## Synopsis

Verify the status of the imported certificate on the NSX Global Manager.

## Syntax

```powershell
Test-NsxtGlobalManagerCertificate [[-certificateId] <String>] [<CommonParameters>]
```

## Description

The `Test-NsxtGlobalManagerCertificate` cmdlet verifies the status of the imported certificate on the NSX Global Manager.

## Examples

### Example 1

```powershell
Get-NsxtGlobalManagerCertificate -certificateId f64fe940-9569-4621-940f-90ea2adafd93
```

This example verifies the status of the imported certificate on the NSX Global Manager.

## Parameters

### -certificateId

The ID of the certificate in the NSX Global Manager.

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

### Common Parameters

This cmdlet supports the common parameters: `-Debug`, `-ErrorAction`, `-ErrorVariable`, `-InformationAction`, `-InformationVariable`, `-OutVariable`, `-OutBuffer`, `-PipelineVariable`, `-Verbose`, `-WarningAction`, and `-WarningVariable`. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).
