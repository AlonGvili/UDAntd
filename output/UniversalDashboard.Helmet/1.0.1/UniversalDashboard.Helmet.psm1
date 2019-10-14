
$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$JsFiles = Get-ChildItem "$PSScriptRoot\*.bundle.js"
$Maps = Get-ChildItem "$PSScriptRoot\*.map"

$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterScript($IndexJs.FullName)

foreach($item in $JsFiles)
{
    [UniversalDashboard.Services.AssetService]::Instance.RegisterScript($item.FullName) | Out-Null
}

foreach($item in $Maps)
{
    [UniversalDashboard.Services.AssetService]::Instance.RegisterScript($item.FullName) | Out-Null
}

function New-UDHelmet {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter(Mandatory = $true)]
        [scriptblock]$Content
    )

    End {
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "ud-helmet"

            id = $Id
            content = $Content.Invoke()
        }
    }
}

function New-UDHtmlTag {
    param(
        [Parameter(Mandatory)]
        [string]$Tag,
        [Parameter()]
        [Hashtable]$Attributes, 
        [Parameter()]
        [ScriptBlock]$Content 
    )

    $ContentValue = $null 
    if ($null -ne $Content)
    {
        $ContentValue = $Content.Invoke()
    }

    @{
        tag = $Tag 
        attributes = $Attributes 
        content = $ContentValue
    }
}