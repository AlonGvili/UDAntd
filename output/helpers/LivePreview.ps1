# Live preview cache variables
Set-Item "Cache:LivePreviewExamples" -Value @() -Force

Set-LivePreviewPage {
    $WhatToShow = Get-Item "Cache:ContentToDisplay"
    Set-UDElement -Id 'componentInfoContent' -Content { 
        if ($WhatToShow -eq "showDoc") {
            "# Testing new functions"
        }
        else {
            Get-LivePreview
        }
    }
}

function Get-LivePreview {
    $Examples = Get-Item "Cache:LivePreviewExamples"
    $Examples
}

function Add-LivePreview {
    param(
        [Parameter(ValueFromPipeline)]
        [object[]]$InputObject,
        [Parameter()]
        [switch]$PassThru
    )

    begin {
        $Examples = @()
    }
    process {
        foreach ($Example in $InputObject) {
            $Examples += $Example
        }
    }
    end {
        Set-Item "Cache:LivePreviewExamples" -Value $Examples -Force
        if ($PassThru) {
            $Examples
        }
    }
}

function New-LivePreview {
    param (
        [Parameter(ValueFromPipeline)]
        [object[]]$InputObject,
        [Parameter()]
        [switch]$PassThru
    )

    process {
        foreach ($Object in $InputObject) {
            $CardParams = @{
                Extra    = ( New-UDAntdButton -Icon "copy" -OnClick { Set-Clipboard -Value $Object.Code } )
                Bordered = $true
                Title    = "Live Preview"
                Content  = { 
                    New-LivePreviewExample -Examle $Object.Example
                    New-LivePreviewExampleCode -Code $Object.Code
                }
                Style    = @{
                    backgroundColor = '#fff'
                    border          = '1px solid #f5f5f5'
                    display         = 'flex'
                    flexDirection   = 'column'
                    justifyContent  = 'center'
                    alignItems      = 'center'
                }
            }

            New-UDAntdCard  @CardParams
        }
    }
}

function New-LivePreviewExample {
    param (
        [Parameter()]
        [object]$Examle
    )

    $Examle
}

function New-LivePreviewExampleCode {
    param (
        [Parameter()]
        [string]$Code
    )

    Document CodeExample {
        $InputObject | Code -Info powershell
    }   

    $CodeExample = CodeExample -InputObject $Code -PassThru
    New-UDMarkdown -Markdown $CodeExample -Styles @{ 
        root = @{
            marginTop = 24
            width     = '100%'
        }
    }
    
}


# @(
#     [PSCustomObject]@{
#         Example = New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType primary
#         Code    = "New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType primary"
#     }

#     [PSCustomObject]@{
#         Example = New-UDAntdButton -Icon "setting" -Size large -OnClick { } -ButtonType primary -Shape circle
#         Code    = "New-UDAntdButton -Icon 'setting' -Size large -OnClick { } -ButtonType primary -Shape circle"
#     }
# ) | New-LivePreview | Add-LivePreview -PassThru