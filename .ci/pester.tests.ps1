BeforeAll {
    Import-Module -Name "$PSScriptRoot/../PowerValidatedSolutions.psd1" -Force -ErrorAction Stop
}

Describe -Tag:('ModuleValidation') 'Module Baseline Validation' {

    It 'is present' {
        $module = Get-Module PowerValidatedSolutions
        $module | Should -Be $true
    }

    It ('passes Test-ModuleManifest') {
        Test-ModuleManifest -Path:("$PSScriptRoot/../PowerValidatedSolutions.psd1") | Should -Not -BeNullOrEmpty
        $? | Should -Be $true
    }
}
