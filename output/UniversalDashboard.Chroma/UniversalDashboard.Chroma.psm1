$JsFile = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
# Source maps to make it easier to debug in the browser 
$Maps = Get-ChildItem "$PSScriptRoot\*.map"

$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterScript($JsFile.FullName)
# Register all the source map files so we can make debugging easier.
foreach ($item in $Maps) {
    [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($item.FullName) | Out-Null
}

function New-UDChroma {
    param
    (
        [Parameter()]
        [string]$Id = [guid]::NewGuid(),
        [Parameter()]
        [string]$ClassName,
        [Parameter()]
        [switch]$Darken,
        [Parameter()]
        [string]$Color,
        [Parameter()]
        [int]$Saturate
    )

    End {

        @{
            assetId         = $AssetId 
            isPlugin        = $true 
            id              = $Id 
            type            = 'ud-chroma'
            color = $Color
            darken = $Darken.IsPresent
            saturate = $Saturate
        }
    }
}

