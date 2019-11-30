



function New-UDAntdComponent {
    Param(
        [Parameter(ValueFromPipeline)]
        [object[]]$UDAntdComponent
    )
    Process {
        foreach ($Component in $UDAntdComponent) {
            if ($Component.Title -match 'API') {
                New-UDAntdRow -Content {
                    New-UDAntdInfo -ExampleInfo $Component.Code
                    New-UDAntdParameterTable -CodeToGenerateParameters $Component.Code.Source
                }
            }
            else {
                New-UDAntdRow -Content {
                    New-UDAntdInfo -ExampleInfo $Component
                    foreach($Demo in $Component.Code){
                        New-UDAntdInfo -ExampleInfo $Demo 
                        Invoke-UDAntdExampleCode -CodeToInvoke $Demo.Source
                    }
                }
            }
        }
    }
}

function Invoke-UDAntdExampleCode {
    Param(
        [Parameter(ValueFromPipeline)]
        [string[]]$CodeToInvoke
    )

    Begin {
        Document 'Snippet' {
            $InputObject | Code -Info text
        }
    }
    Process {
        foreach ($Code in $CodeToInvoke) {
            New-UDAntdRow -Content {
                [scriptblock]::Create($Code).Invoke()
            } -Style @{
                padding         = 24
                backgroundColor = '#f5f5f5'
                borderRadius    = '4px 4px 0 0'
            }
            New-UDAntdRow -Content {
                New-UDMarkdown -Markdown '##### POWERSHELL' -Styles $WebAppStyles['CodeExampleMarkdownTitle']
                $MarkdownCode = Snippet -InputObject $Code -PassThru 
                New-UDMarkdown -Markdown $MarkdownCode -ShowLineNumberInCodeBlock -Styles @{
                    root      = $WebAppStyles['LivePreviewExampleCodeRoot']
                    codeBlock = $WebAppStyles['LivePreviewExampleCodeBlock']    
                }
                New-UDAntdCopyToClipboard -Id 'CopyButton' -Size large -Icon "copy" -TextToCopy $Code -Style $WebAppStyles['CopyCodeButtonStyle']
            } -Style @{display = 'flex'; flexDirection = 'column'; alignItems = 'stretch' }
        }
    }
}

function New-UDAntdParameterTable {
    param(
        [Parameter(ValueFromPipeline)]
        [string[]]$CodeToGenerateParameters
    )
    Begin {
        Document 'Test' {
            $InputObject | Table
        }
    }
    Process {
        foreach ($ParameterCode in $CodeToGenerateParameters) {
            $Params = [scriptblock]::Create($ParameterCode).Invoke() | Select-Object -Property Name, ParameterType
            $Parameters = Test -InputObject $Params -PassThru
            
            New-UDAntdRow -Content {
                New-UDMarkdown -Markdown $Parameters -Styles $WebAppStyles['UDAntdParameterTable']
            }
        }
    }
}
function New-UDAntdInfo {
    param(
        # [Parameter(ValueFromPipelineByPropertyName)]
        # [string[]]$Title,
        # [Parameter(ValueFromPipelineByPropertyName)]
        # [string[]]$Description,
        [Parameter(ValueFromPipeline)]
        [object[]]$ExampleInfo
    )

    Process {
        foreach ($info in $ExampleInfo) {
            New-UDAntdRow -Content {
                New-UDMarkdown -Markdown "# $($Info.Title)" -Styles @{
                    fontSize      = 48
                    fontVariant   = 'all-petite-caps'
                    fontWeight    = 900
                    letterSpacing = '0.1rem'
                    marginBottom  = 'unset'
                }
                New-UDMarkdown -Markdown "### $($Info.Description)"
            }
        }
    }
}
