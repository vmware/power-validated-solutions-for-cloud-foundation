Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-Module -Name VMware.PowerCLI -MinimumVersion 13.3.0 -Repository PSGallery -Scope AllUsers
Install-Module -Name VMware.vSphere.SsoAdmin -MinimumVersion 1.3.9 -Repository PSGallery -Scope AllUsers
Install-Module -Name PowerVCF -MinimumVersion 2.4.1 -Repository PSGallery -Scope AllUsers
Install-Module -Name ImportExcel -MinimumVersion 7.8.9 -Repository PSGallery -Scope AllUsers
Install-Module -Name PowerValidatedSolutions -MinimumVersion 2.12.0 -Repository PSGallery -Scope AllUsers
