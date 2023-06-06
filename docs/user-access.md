# User Access

Each cmdlet may provide one or more usage examples. Many of the cmdlets require that credentials are provided to output to the PowerShell console or a report.

The cmdlets in this module, and its dependencies, return data from multple platform components. The credentials for most of the platform components are returned to the cmdlets by retrieving credentials from the SDDC Manager inventory and using these credentials, as needed, within cmdlet operations.

For the best expereince, for cmdlets that connect to SDDC Manager, use the VMware Cloud Foundation API user `admin@local` or an account with the **ADMIN** role in SDDC Manager (e.g., `administrator@vsphere.local`).
