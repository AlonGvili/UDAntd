# Live preview cache variables
Set-Item "Cache:LivePreviewExamples" -Value @() -Force

function Set-LivePreviewPage {
    $WhatToShow = Get-Item "Cache:ContentToDisplay"
    Set-UDElement -Id 'ComponentContentSection' -Content { 
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
                Title     = $Object.Title
                Content   = { 
                    New-LivePreviewExample -Examle $Object.Example
                    New-LivePreviewExampleCode -Code $Object.Code
                }
                headStyle = $WebAppStyles['LivePreviewHeadStyle']
                Style     = $WebAppStyles['LivePreviewStyle']
                BodyStyle = $WebAppStyles['LivePreviewBodyStyle']
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
        root      = $WebAppStyles['LivePreviewExampleCodeRoot']
        codeBlock = $WebAppStyles['LivePreviewExampleCodeBlock']
    }
    
}

