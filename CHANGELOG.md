# Release History
## v1.1.0 (2021-05-10)
- Added `New-vRSLCMLockerPassword` cmdlet to support adding passwords to the vRealize Lifecycle Suite Manager Locker.
- Added `New-vRSLCMLockerLicense` cmdlet to support adding licenses to the vRealize Lifecycle Suite Manager Locker.
- Enhanced `Add-VmStartupRule` to check both VM Groups exists before attempting to create the VM-to-VM Group.
- Enhanced `Add-ContentLibrary` to support creation of both Published and Subscription Content Libraries.
- Added `Add-VmGroup` cmdlet to support adding Virtual Machines to existing VM Groups (availability Zones in particular).
- Added a number of new functions to support automation of the Site Protection and Disaster Recovery solution:
    - `Install-SiteRecoveryManager`
    - `Install-vSphereReplicationManager`
    - `Connect-DRSolutionTovCenter`
    - `Install-VAMICertificate`
    - `Backup-VMOvfProperties`
    - `Restore-VMOvfProperties`
    - `Copy-vRealizeLoadBalancer `
- Fixed `Set-vCenterPermission` where a failure can occur if the workload domain does not follow the same naming as the vCenter Server.

## v1.0.1 (2021-16-09)
- Fixed the way Certificate file is read in Add-WSALdapDirectory to avoid truncation of certificate data.
- Fixed `Add-ContentLibrary` where creation using subscription URL was failing.
- Fixed `Add-VMFolder` where it was creating a folder in each vCenter Server in the Single Sign-On Domain.

## v1.0.0 (2021-24-08)
- Initial Module Release