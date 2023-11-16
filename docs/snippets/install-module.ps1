Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
Install-Module -Name VMware.PowerCLI -MinimumVersion 13.1.0 -Repository PSGallery 
Install-Module -Name VMware.vSphere.SsoAdmin -MinimumVersion 1.3.9 -Repository PSGallery
Install-Module -Name PowerVCF -MinimumVersion 2.4.0 -Repository PSGallery
Install-Module -Name ImportExcel -MinimumVersion 7.8.5 -Repository PSGallery
Install-Module -Name PowerValidatedSolutions -MinimumVersion 2.7.0 -Repository PSGallery
