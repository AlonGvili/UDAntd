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
                    New-UDAntdCopyToClipboard -Shape circle -Size large -Icon "copy" -ButtonType primary -TextToCopy $Object.Code -Style @{
                        position = 'absolute'
                        right = 15
                        bottom = 25
                        zIndex = 20;
                    }
                }
                headStyle = $WebAppStyles['LivePreviewHeadStyle']
                Style     = $WebAppStyles['LivePreviewStyle']
                BodyStyle = $WebAppStyles['LivePreviewBodyStyle']
            }

            New-UDAntdCard  @CardParams
            if($Object.Notes){
                New-LivePreviewNotes -Notes $Object.Notes
            }
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

function New-LivePreviewNotes {
    param (
        [Parameter()]
        [string[]]$Notes
    )

    # Document NotesExample {
    #     $InputObject | BlockQuote 
    # }   

    foreach ($Note in $Notes) {
        # $NoteExample = NotesExample -InputObject $Note -PassThru
        New-UDMarkdown -Markdown $Note -Styles @{
            blockquote = @{
                color           = '#000000a6'; 
                borderLeft      = '4px solid #2196F3'; 
                backgroundColor = '#f5f5f5'; 
                borderRadius    = 0
                textAlign       = 'start'
                margin = '0 24px'
            }
            p          = @{
                padding = 16
                margin  = 0
            }
            inlinecode = @{
                color           = "#fff"
                backgroundColor = "#1890ff"
                padding         = "4px 8px"
                margin          = "0 4px"
                borderRadius    = 2
            }
        }
    }

}