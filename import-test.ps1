Describe "ImportedTest" {
$testname = 'does something less useful'
if (($SkipTests.Functions.$functionname.$testname.skip) -ne 'true'){
    It "$testname" {
        $true | Should Be $false
    }
}
}