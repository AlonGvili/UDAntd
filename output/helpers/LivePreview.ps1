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
    Get-Item "Cache:LivePreviewExamples" | ForEach-Object {
        $_
    }
    
    # New-UDMarkdown -Markdown "$($Examples[0])"
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
                Title     = $Object.Title
                Content   = { 
                    if($Object.Example.Count -eq $Object.Code.Count){
                        0..($Object.Example.Count - 1) | ForEach-Object {
                            New-UDAntdRow -Flex -Content {
                                New-LivePreviewExample -Examle $Object.Example[$_]
                                New-LivePreviewExampleCode -Code $Object.Code[$_]
                                New-UDAntdCopyToClipboard -Id 'CopyButton' -Shape circle -Size large -Icon "copy" -ButtonType primary -TextToCopy $Object.Code[$_] -Style @{
                                    position = 'absolute'
                                    right = -20
                                    bottom = 0
                                    border = '2px solid #fff'
                                    boxShadow = 'unset'
                                    textShadow = 'unset'
                                    zIndex = 20;
                                }
                            } -Style @{marginBottom = 24}
                        }
                    }
                    else{
                        Show-UDToast -Message "Examples [$($Object.Example.Count)] | Examples Code [$($Object.Code.Count)]" -Duration 8000
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
        [string[]]$Code
    )

    Process {
        Document CodeExample {
            $InputObject | Code -Info powershell
        }   
    
        foreach($PSCode in $Code){
            $CodeExample = CodeExample -InputObject $PSCode -PassThru
            New-UDMarkdown -Markdown $CodeExample -Styles @{ 
                root      = $WebAppStyles['LivePreviewExampleCodeRoot']
                codeBlock = $WebAppStyles['LivePreviewExampleCodeBlock']
            }
        }
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