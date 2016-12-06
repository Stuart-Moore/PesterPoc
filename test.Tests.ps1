$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"
$functionname = ($sut.Split("."))[0]
$SkipTests = get-content .\shame.json | convertFrom-Json

Describe "test" {
$testname = 'does something useful'
if (($SkipTests.Functions.$functionname.$testname.skip) -ne 'true'){
    It "$testname" {
        $true | Should Be $false
    }
}
}

. .\import-test.ps1
