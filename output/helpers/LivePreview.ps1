# Live preview cache variables
Set-Item "Cache:LivePreviewExamples" -Value @() -Force

function Set-LivePreviewPage {
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
                # Extra     = ( New-UDAntdButton -Icon "copy" -OnClick { Set-Clipboard -Value $Object.Code } )
                Title = $Object.Title
                Content   = { 
                    New-LivePreviewExample -Examle $Object.Example
                    New-LivePreviewExampleCode -Code $Object.Code
                }
                headStyle = @{
                    textAlign = 'start'
                    fontSize = 48
                    fontWeight = 900
                    width = '100%'
                    borderBottom = 'unset'
                }
                Style     = @{
                    backgroundColor = '#fff'
                    display         = 'flex'
                    flexDirection   = 'column'
                    justifyContent  = 'center'
                    alignItems      = 'center'
                    marginTop       = 48
                }
                BodyStyle = @{
                    display       = 'flex'
                    flexDirection = 'column'
                    width         = '100%'
                    padding       = 24
                    textAlign     = 'center'
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
        root      = @{
            marginTop = 24
            width     = '100%'
            textAlign = 'center'
        }
        codeBlock = @{
            padding         = 16
            marginTop       = 16
            backgroundColor = '#021d38'
            color           = '#e6f7ff'
            textAlign       = 'start'
            borderRadius    = 4
        }
    }
    
}

