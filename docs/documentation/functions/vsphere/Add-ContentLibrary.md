# Add-ContentLibrary

## Synopsis

Creates a content library

## Syntax

### Subscription

```powershell
Add-ContentLibrary -server <String> -user <String> -pass <String> -domain <String> -contentLibraryName <String>
 [-datastore <String>] [-subscriptionUrl <String>] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

### Local

```powershell
Add-ContentLibrary -server <String> -user <String> -pass <String> -domain <String> -contentLibraryName <String>
 [-datastore <String>] [-published] [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## Description

The `Add-ContentLibrary` cmdlet creates a subscribed or published content library.
The cmdlet connects to SDDC Manager using the -server, -user, and -password values:

- Validates that network connectivity and authentication is possible to SDDC Manager
- Validates that network connectivity and authentication is possible to vCenter Server
- Creates a content library.

## Examples

### Example 1

```powershell
Add-ContentLibrary -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -contentLibraryName sfo-w01-lib01 -published
```

This example creates published content library named sfo-w01-lib01 on the primary datastore in workload domain sfo-w01

### Example 2

```powershell
Add-ContentLibrary -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -contentLibraryName sfo-w01-lib01 -datastore sfo-w01-ds-nfs01 -published
```

This example creates published content library named sfo-w01-lib01 on a specific datastore in workload domain sfo-w01

### Example 3

```powershell
Add-ContentLibrary -server sfo-vcf01.sfo.rainpole.io -user administrator@vsphere.local -pass VMw@re1! -domain sfo-w01 -contentLibraryName Kubernetes -subscriptionUrl "https://wp-content.vmware.com/v2/latest/lib.json"
```

This example creates subscribed content library named Kubernetes on the primary datastore in workload domain sfo-w01.

## Parameters

### -server

The fully qualified domain name of the SDDC Manager.

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

### -user

The username used to authenticate to SDDC Manager.

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

### -pass

The password used to authenticate to SDDC Manager.

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

### -domain

The name of the workload domain to run against.

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

### -contentLibraryName

The name of the content library to create.

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

### -datastore

The datastore to create the content library on.

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

### -subscriptionUrl

The subscription URL to create the content library from.

```yaml
Type: String
Parameter Sets: Subscription
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -published

The content library to be published.

```yaml
Type: SwitchParameter
Parameter Sets: Local
Aliases:

Required: False
Position: Named
Default value: False
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
