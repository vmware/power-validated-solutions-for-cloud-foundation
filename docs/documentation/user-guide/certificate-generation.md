# Certificate Generation for VMware Validated Solutions

## Introduction

The VMware Validated Solutions for VMware Cloud Foundation require the use of custom SSL certificates that must be signed by a trusted certificate authority. You can use this PowerShell module to generate a certificate signing request (CSR) and have it signed.

You can use the following functions to generate custom certificates for the products used to build a private cloud based on VMware Validated Solutions for VMware Cloud Foundation.

| Function                                                                                          | Type      |
| ------------------------------------------------------------------------------------------------- | --------- |
| [`Invoke-GeneratePrivateKeyAndCsr`](../functions/certificates/Invoke-GeneratePrivateKeyAndCsr.md) | Procedure |
| [`Invoke-RequestSignedCertificate`](../functions/certificates/Invoke-RequestSignedCertificate.md) | Procedure |
| [`Invoke-GenerateChainPem`](../functions/certificates/Invoke-GenerateChainPem.md)                 | Procedure |

Generated SSL certificates can be signed by the following certificate authorities (CAs):

- Microsoft Active Directory Certificate Services
- OpenSSL (Self-signed)

### Compatibility

These functions are compatible with and referenced in the documentation for specific versions of VMware Validated Solutions for VMware Cloud Foundation.

| Version                                                      | Supported                           |
| -------------------------------------------------------------|------------------------------------ |
| :fontawesome-solid-cloud: &nbsp; VMware Cloud Foundation 5.1 | :fontawesome-solid-check:{ .green } |
| :fontawesome-solid-cloud: &nbsp; VMware Cloud Foundation 5.0 | :fontawesome-solid-check:{ .green } |
| :fontawesome-solid-cloud: &nbsp; VMware Cloud Foundation 4.5 | :fontawesome-solid-check:{ .green } |
| :fontawesome-solid-cloud: &nbsp; VMware Cloud Foundation 4.4 | :fontawesome-solid-x:{ .red }       |

### Prerequisites

The functions will require the following prerequisites in addition to the prerequisites required by the PowerShell Module for VMware Validated Solutions.

=== ":fontawesome-brands-microsoft: &nbsp; Microsoft Active Directory Certificate Services"

    - Review [Prepare Your Microsoft Certificate Authority to Allow SDDC Manger to Manage Certificates](https://docs.vmware.com/en/VMware-Cloud-Foundation/5.1/vcf-admin/GUID-E9D93C0C-646C-4F75-95CB-D8AE6DB99618.html) for information on configuring the following:
    - OpenSSL 3.0.0 or later

=== ":fontawesome-solid-certificate: &nbsp; OpenSSL (Self-signed)"

    - Review [Use OpenSSL to Generate a Root Certificate Authority Certificate¶](#use-openssl-to-generate-a-root-certificate-authority-certificate) for information on configuring thr following:
        - Root certificate authority private key.
        - Root certificate authority certificate.
    - OpenSSL 3.0.0 or later

#### OpenSSL

The functions require an OpenSSL binary, which can be compiled from [OpenSSL.org <sup>:octicons-link-external-16:</sup>](http://openssl.org/). Additionally, the [OpenSSL Wiki <sup>:octicons-link-external-16:</sup>](https://wiki.openssl.org/index.php/Binaries) has a list of pre-compiled binaries for Microsoft Windows by third parties. Read all security disclosures and disclaimers when using binaries compiled by 3rd parties.

The recommended third party binary is [Win64 OpenSSL v3.2.1 Light <sup>:octicons-link-external-16:</sup>](https://slproweb.com/products/Win32OpenSSL.html) as it does not include the OpenSSL source code.

Ensure that the path for the OpenSSL binary for Windows is set in the `PATH` environment variable.

## Procedure

### Generate Private Keys and Certificate Signing Requests

The [`Invoke-GeneratePrivateKeyAndCsr`](../functions/certificates/Invoke-GeneratePrivateKeyAndCsr.md) function generates the private key and certificate signing request (CSR) files using OpenSSL with a common name and additional parameters as necessary.

1. Start PowerShell (Run as Administrator)
2. Replace the values in the example with values for the common name and certificate details.

      Example:

      ```powershell
      $outDirPath = "C:\certificates"
      ​​$commonName = "sfo-vrli01.sfo.rainpole.io"
      $subjectAlternativeNames = "sfo-vrli01a.sfo.rainpole.io, sfo-vrli01b.sfo.rainpole.io, sfo-vrli01c.sfo.rainpole.io"
      $keySize = 4096
      $expireDays = 720
      $organization = "Rainpole"
      $organizationUnit = "Platform Engineering"
      $locality = "San Francisco"
      $state = "California"
      $country = "US"
      ```

3. Generate private key and certificate signing request files by running the command in the PowerShell console

      ```powershell
      Invoke-GeneratePrivateKeyAndCsr -outDirPath $outDirPath -commonName $commonName -subjectAlternativeNames $subjectAlternativeName -keySize $keySize -expireDays $expireDays -organization $organization -organizationUnit $organizationUnit -locality $locality -state $state -country $country
      ```

You can find the private key and certificate signing request files in the `C:\certificates` file path.

### Request to Sign-off Certificate Signing Request from a Certificate Authority

The [`Invoke-RequestSignedCertificate`](../functions/certificates/Invoke-RequestSignedCertificate.md) function signs off a certificate signing request using either the Microsoft Certificate Authority web enrollment service or OpenSSL method.

Select the method you want to use and follow the instructions.

#### Using a Microsoft Active Directory Certificate Services Web Enrollment Service

1. Start PowerShell (Run as Administrator).
2. Replace the values in the example with values for the CSR file path and certificate authority details.

      Example:

      ```powershell
      $csrFilePath = "C:\certificates\sfo-vrli01.sfo.rainpole.io.csr"
      $outDirPath = "C:\certificates"
      ​​$certificateAuthority = "msca"
      $caFqdn = "sfo-rainpole-ca01.sfo.rainpole.io"
      $username = "Administrator"
      $password = "VMw@re1!"
      $certificateTemplate = "VMware"
      ```

3. Request the CSR file to be signed by the intermediate certificate authority by running the command in the PowerShell console.

      ```powershell
      Invoke-RequestSignedCertificate -csrFilePath $csrFilePath -outDirPath $outDirPath -certificateAuthority $certificateAuthority -caFqdn $caFqdn -username $username -password $password -certificateTemplate $certificateTemplate -getCArootCert
      ```

You can find the signed certificate and the full root chain certificate files in the `C:\certificates` file path.

#### Using OpenSSL

1. Start PowerShell (Run as Administrator).
2. Replace the values in the example with values for the CSR file path and certificate authority details.

      Example:

      ```powershell
      $csrFilePath = "C:\certificates\sfo-vrli01.sfo.rainpole.io.csr"
      $outDirPath = "C:\certificates"
      ​​$certificateAuthority = "openssl"
      $caKeyPath = "C:\certificates\CAroot.key"
      $caCertPath = "C:\certificates\CAroot.pem"
      $expireDays = 365
      ```

3. Request the CSR file to be signed with OpenSSL by running the command in the PowerShell console.

      ```powershell
      Invoke-RequestSignedCertificate -csrFilePath $csrFilePath -outDirPath $outDirPath -certificateAuthority $certificateAuthority -caKeyPath $caKeyPath -caCertPath $caCertPath -expireDays $expireDays
      ```

You can find the signed certificate file in the `C:\certificates` file path.

## Create a PEM Bundle

The [`Invoke-GenerateChainPem`](../functions/certificates/Invoke-GenerateChainPem.md) function takes in private key, signed certificate, and/or root certificate files and then combines them into a single PEM file. This bundled PEM file can be consumed by solution products.

1. Start PowerShell (Run as Administrator).
2. Replace the values in the example with values for the private key, signed certificate, and root CA certificate.

      Example:

      ```powershell
      $outDirPath = "C:\certificates"
      ​​$keyFilePath = "C:\certificates\sfo-vrli01.sfo.rainpole.io.key"
      $crtFilePath = "C:\certificates\sfo-vrli01.sfo.rainpole.io.crt"
      $rootCaFilePath = "C:\certificates\rpl-ad01.rainpole.io-rootCA.pem"
      ```

3. Combine the private key, certificate, and the root chain certificate into a single PEM file by running the command in the PowerShell console.

      ```powershell
      Invoke-GenerateChainPem -outDirPath $outDirPath -keyFilePath $keyFilePath -crtFilePath $crtFilePath -rootCaFilePath $rootCaFilePath
      ```

You can find the combined bundle file `.pem` file in `C:\certificates` file path.

## Additional Information

### Use OpenSSL to Generate a Root Certificate Authority Certificate

You can generate your own root certificate authority certificate using OpenSSL.

1. Start PowerShell (Run as Administrator)
2. Navigate to a writable directory and run the following commands in the PowerShell console.

      ```powershell
      openssl req -x509 -sha256 -days 3650 -nodes -newkey rsa:2048 -keyout openssl-root.key -out openssl-root.pem
      ```

3. Enter all the required information at the prompt. The `openssl-root.key` and `openssl-root.pem` files will be generated from the information provided.
