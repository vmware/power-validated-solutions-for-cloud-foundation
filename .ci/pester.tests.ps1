Describe -Tag:('ModuleValidation') 'Module Basic Tests' {

    It 'is present' {
        $module = Get-Module -Name $moduleName
        $module | Should -Be $true
    }

    It ('passes Test-ModuleManifest') {
        Test-ModuleManifest -Path $moduleManifest | Should -Not -BeNullOrEmpty
        $? | Should -Be $true
    }
}
