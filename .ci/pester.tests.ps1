$moduleName = "PowerValidatedSolutions"

BeforeAll {
    Import-Module -Name "$PSScriptRoot/../$moduleName.psd1" -Force -ErrorAction Stop
}

Describe -Tag:('ModuleValidation') 'Module Baseline Validation' {

    It 'is present' {
        $module = Get-Module $moduleName
        $module | Should -Be $true
    }

    It ('passes Test-ModuleManifest') {
        Test-ModuleManifest -Path:("$PSScriptRoot/../$moduleName.psd1") | Should -Not -BeNullOrEmpty
        $? | Should -Be $true
    }
}
