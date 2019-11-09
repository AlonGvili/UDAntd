$LivePreviewExamplesDB = @{
    Icon        = @(
        [PSCustomObject]@{
            Title   = "OUTLINE"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    (Get-Command New-UDAntdIcon).Parameters['icon'].Attributes.ValidValues -match "OUTLINE" | ForEach-Object {
                        New-UDAntdIcon -Icon $_ -Size 2x -Style @{ margin = 16 } -Color '#1890ff'
                    }
                }
            )
            Code    = '
(Get-Command New-UDAntdIcon).Parameters["icon"].Attributes.ValidValues -match "OUTLINE" | ForEach-Object {
    New-UDAntdIcon -Icon $_ -Size 2x -Style @{ margin = 16 }
}
'
        }

        [PSCustomObject]@{
            Title   = "FILLED"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    (Get-Command New-UDAntdIcon).Parameters['icon'].Attributes.ValidValues -match "FILL" | ForEach-Object {
                        New-UDAntdIcon -Icon $_ -Size 2x -Style @{ margin = 16 } -Color '#1890ff'
                    }
                }
            )
            Code    = '
(Get-Command New-UDAntdIcon).Parameters["icon"].Attributes.ValidValues -match "FILL" | ForEach-Object {
    New-UDAntdIcon -Icon $_ -Size 2x -Style @{ margin = 16 }
}
'
        }

        [PSCustomObject]@{
            Title   = "TWOTONE"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    (Get-Command New-UDAntdIcon).Parameters['icon'].Attributes.ValidValues -match "TwoTone" | ForEach-Object {
                        New-UDAntdIcon -Icon $_ -Size 2x -Style @{ margin = 16 } -IsTwoTone -PrimaryColor '#1890ff'
                    }
                }
            )
            Code    = '
(Get-Command New-UDAntdIcon).Parameters["icon"].Attributes.ValidValues -match "TwoTone" | ForEach-Object {
    New-UDAntdIcon -Icon $_ -Size 2x -Style @{ margin = 16 } -IsTwoTone -PrimaryColor "#1890ff"
}
'
        }

        [PSCustomObject]@{
            Title   = "SIZE"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    (Get-Command new-udantdicon).Parameters['size'].Attributes.ValidValues | ForEach-Object {
                        New-UDAntdIcon -Icon CodeOutline -Size $_ -Style @{ margin = 16 } -Color '#1890ff'
                    }
                }
            )
            Code    = '
(Get-Command new-udantdicon).Parameters["size"].Attributes.ValidValues | ForEach-Object {
    New-UDAntdIcon -Icon CodeOutline -Size $_ -Style @{ margin = 16 } -Color "#1890ff"
}
'
        }

        [PSCustomObject]@{
            Title   = "EVENT"
            Example = @(
                New-UDAntdRow -Align middle -Justify center -Flex -Gutter 48 -Content {
                    New-UDAntdIcon -Id 'DemoIcon' -Icon CodeFill -Size 4x -Style @{ margin = 16 } -Color '#1890ff' -OnClick {
                        Set-UDElement -Id 'DemoIcon' -Attributes @{icon = 'CodeTwoTone'; isTwoTone = $true; primaryColor = '#ffc107' }
                    }
                }
            )
            Code    = '
New-UDAntdIcon -Id "DemoIcon" -Icon CodeFill -Size 4x -Style @{ margin = 16 } -Color "#1890ff" -OnClick {
    Set-UDElement -Id "DemoIcon" -Attributes @{icon = "CodeTwoTone"; isTwoTone = $true; primaryColor = "#ffc107" }
}
'
        }
    )
    Button      = @(
        
        [PSCustomObject]@{
            Title   = "BASIC"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -Style @{margin = '16px' }
                    New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType primary -Style @{margin = '16px' }
                    New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType danger -Style @{margin = '16px' }
                    New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType dashed -Style @{margin = '16px' }
                    New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType ghost -Style @{margin = '16px' }
                    New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType link -Style @{margin = '16px' }
                }
            )
            Code    = "
New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -Style @{margin = '16px' }
New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType primary -Style @{margin = '16px' }
New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType danger -Style @{margin = '16px' }
New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType dashed -Style @{margin = '16px' }
New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType ghost -Style @{margin = '16px' }
New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType link -Style @{margin = '16px' }
"
        }

        [PSCustomObject]@{
            Title   = "SIZE"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    New-UDAntdButton -Icon "setting" -Size small -OnClick { } -ButtonType primary -Shape circle -Style @{margin = '16px' }
                    New-UDAntdButton -Icon "setting" -OnClick { } -ButtonType primary -Shape circle -Style @{margin = '16px' }
                    New-UDAntdButton -Icon "setting" -Size large -OnClick { } -ButtonType primary -Shape circle -Style @{margin = '16px' }
                }
            )
            Code    = "
New-UDAntdButton -Icon 'setting' -Size small -OnClick { } -ButtonType primary -Shape circle -Style @{margin = '16px' }
New-UDAntdButton -Icon 'setting' -OnClick { } -ButtonType primary -Shape circle -Style @{margin = '16px' }
New-UDAntdButton -Icon 'setting' -Size large -OnClick { } -ButtonType primary -Shape circle -Style @{margin = '16px' }
"
        }

        [PSCustomObject]@{
            Title   = "STATE"
            Example = New-UDAntdButton -Id 'button_loading_example' -Icon "setting" -Size large -OnClick {
                Set-UDElement -Id 'button_loading_example' -Attributes @{loading = $true }
                Start-Sleep -Seconds 2
                Set-UDElement -Id 'button_loading_example' -Attributes @{loading = $false }
            } -ButtonType danger -Shape circle -Style @{margin = '16px auto' }
            Code    = "
New-UDAntdButton -Id 'button_loading_example' -Icon 'setting' -Size large -OnClick {
    Set-UDElement -Id 'button_loading_example' -Attributes @{loading = $true}
    Start-Sleep -Seconds 2
    Set-UDElement -Id 'button_loading_example' -Attributes @{loading = $false }
} -ButtonType danger -Shape circle -Style @{ margin = '16px auto' }
"
        }        
    )

    ButtonGroup = @(

        [PSCustomObject]@{
            Title   = "BASIC"
            Example = New-UDAntdButtonGroup -Content {
                New-UDAntdButton -ButtonType primary -Label Show -Size large
                New-UDAntdButton -ButtonType primary -Label Hide -Size large
            } -Style @{ padding = 16 }
            Code    = "
New-UDAntdButtonGroup -Content {
    New-UDAntdButton -ButtonType primary -Label Show -Size large
    New-UDAntdButton -ButtonType primary -Label Hide -Size large
}"
        }

        [PSCustomObject]@{
            Title   = "SIZE"
            Example = New-UDAntdButtonGroup -Content {
                New-UDAntdButton -ButtonType primary -Size small -Icon 'cloud'
                New-UDAntdButton -ButtonType primary -Size small -Icon 'cloud-download'
            } -Style @{
                padding = 16
            }
            Code    = "
New-UDAntdButtonGroup -Content {
    New-UDAntdButton -ButtonType primary -Size small -Icon 'cloud'
    New-UDAntdButton -ButtonType primary -Size small -Icon 'cloud-download'
}
".Trim()
        }

        [PSCustomObject]@{
            Title   = "STATE"
            Example = New-UDAntdButtonGroup -Content {
                New-UDAntdButton -Label  A
                New-UDAntdButton -Label  N
                New-UDAntdButton -Label  T
                New-UDAntdButton -Label  D            
            } -Style @{
                padding = 16
            }
            Code    = "
New-UDAntdButtonGroup -Content {
    New-UDAntdButton -Label  A
    New-UDAntdButton -Label  N
    New-UDAntdButton -Label  T
    New-UDAntdButton -Label  D
}
".Trim()
        }

    )

    Input       = @(

        [PSCustomObject]@{
            Title   = "BASIC"
            Example = @(
                New-UDAntdInput -Id 'demoInput' -size large -PlaceHolder 'Test for endpoint' -onChange { } -OnPressEnter {
                    Show-UDToast -Message $body
                }
            )
            Code    = '
            New-UDAntdInput -Id "demoInput" -size large -PlaceHolder "Test for endpoint" -OnPressEnter {
                Show-UDToast -Message $body
            }'
            Notes   = @(
                '>For now you MUST used the ```$Body``` variable inside OnPressEnter scriptblock, when you press enter this variable will store the input value.'
            )
        }
    )

    Badge       = @(
        [PSCustomObject]@{
            Title   = "BASIC"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    New-UDAntdBadge -PresetColor gold -Content ( New-UDAntdIcon -Icon NotificationOutline -Size lg)
                    New-UDAntdBadge -PresetColor lime -Text 'Universal Dashboard'
                    New-UDAntdBadge -Style @{ backgroundColor = '#fa541c'; color = '#fff' } -Count ( 166 ) -OverflowCount 9999 
                    New-UDAntdBadge -Style @{ backgroundColor = '#fa541c'; color = '#fff' } -OverflowCount 9999 -ShowZero 
                }
            )
            Code    = '
            New-UDAntdBadge -PresetColor gold -Content ( New-UDAntdIcon -Icon NotificationOutline -Size lg)
            New-UDAntdBadge -PresetColor lime -Text "Universal Dashboard"
            New-UDAntdBadge -Style @{ backgroundColor = "#2f54eb"; color = "#fff" } -Count ( 166 ) -OverflowCount 9999 
            '
            Notes   = @(
                '>For now you MUST used the ```$Body``` variable inside OnPressEnter scriptblock, when you press enter this variable will store the input value.'
            )
        }
    )

    Avatar      = @(
        [PSCustomObject]@{
            Title   = "BASIC"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    New-UDAntdAvatar -Shape circle -Size default -Content 'AG' -Style @{margin = '16px auto' }
                    New-UDAntdAvatar -Shape circle -Size default -Content 'A' -Style @{margin = '16px auto' }
                    New-UDAntdAvatar -Shape circle -Size default -Content 'Alon' -Style @{margin = '16px auto' }
                }
            )
            Code    = '
            New-UDAntdAvatar -Shape circle -Size default -Content "AG"
            New-UDAntdAvatar -Shape circle -Size default -Content "A"
            New-UDAntdAvatar -Shape circle -Size default -Content "Alon"
            '
        }
        [PSCustomObject]@{
            Title   = "SIZES"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    New-UDAntdAvatar -Shape circle -Size small -Content "AG" -Style @{margin = '16px auto' }
                    New-UDAntdAvatar -Shape circle -Size default -Content "AG" -Style @{margin = '16px auto' }
                    New-UDAntdAvatar -Shape circle -Size large -Content "AG" -Style @{margin = '16px auto' }
                }
            )
            Code    = '
            New-UDAntdAvatar -Shape circle -Size small -Content "AG"
            New-UDAntdAvatar -Shape circle -Size default -Content "AG"
            New-UDAntdAvatar -Shape circle -Size large -Content "AG"
            '
        }
        [PSCustomObject]@{
            Title   = "TYPES"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Gutter 48 -Content {
                    New-UDAntdAvatar -Shape circle -Size large -Content "AG" -Style @{margin = '16px auto' }
                    New-UDAntdAvatar -Shape circle -Size large -Src 'https://avatars2.githubusercontent.com/u/34351424?s=460&v=4' -Style @{margin = '16px auto' }
                    New-UDAntdAvatar -Shape circle -Size large -Style @{backgroundColor = "#1890ff"; margin = '16px auto' } -Icon (
                        New-UDAntdIcon -Icon NotificationOutline -Size sm -Color '#fff' 
                    )
                }
            )
            Code    = '
            New-UDAntdAvatar -Shape circle -Size default -Content "AG"
            New-UDAntdAvatar -Shape circle -Size default -Src "https://avatars2.githubusercontent.com/u/34351424?s=460&v=4"
            New-UDAntdAvatar -Shape circle -Size default -Icon (
                New-UDAntdIcon -Icon NotificationFill -Size sm 
            )
    '
        }
    )

    Card        = @(
        [PSCustomObject]@{
            Title   = "BASIC"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Content {
                    New-UDAntdCard -Bordered -Content {
                        "Just a basic card"
                    } -BodyStyle @{padding = 24 }
                }
            )
            Code    = "
            New-UDAntdCard -Bordered -Content {
                'Just a basic card'
            } -BodyStyle @{padding = 24}
"
        }

        [PSCustomObject]@{
            Title   = "CARD HEADER"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Style @{marginBottom = 16 } -Content {
                    New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
                        'Just a basic card with header'
                    } -BodyStyle @{padding = 24 }
                }

                New-UDAntdRow -Align middle -Justify space-between -Flex -Style @{marginBottom = 16 } -Content {
                    New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
                        'Just a basic card with title and buttons'
                    } -Extra @(
                        New-UDAntdButtonGroup -Content {
                            New-UDAntdButton -Icon 'frown' -ButtonType primary -Size small -OnClick { }
                            New-UDAntdButton -Icon 'smile' -ButtonType primary -Size small -OnClick { }
                        } 
                    ) -HeadStyle @{textAlign = 'left' } -BodyStyle @{padding = 24 }
                }
            )
            Code    = "
            New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
                'Just a basic card with header'
            } -BodyStyle @{padding = 24}

            New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
                'Just a basic card with title and buttons'
            } -Extra @(
                New-UDAntdButtonGroup -Content {
                    New-UDAntdButton -Icon 'frown' -ButtonType primary -Size small -OnClick {}
                    New-UDAntdButton -Icon 'smile' -ButtonType primary -Size small -OnClick {}
                } 
            ) -HeadStyle @{textAlign = 'left'} -BodyStyle @{padding = 24}

"
        }

        [PSCustomObject]@{
            Title   = "STATE"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Content {
                    New-UDAntdCard -Id 'reloaded-card' -IsEndpoint -Bordered -Title 'UniversalDashboard' -Content {
                        250..2500 | Get-Random
                    } -Extra @(
                        New-UDAntdButton -Icon 'reload' -ButtonType primary -Shape circle -Size small -OnClick {
                            Sync-UDElement -Id 'reloaded-card'
                        }
                    ) -HeadStyle @{textAlign = 'left' } -BodyStyle @{fontSize = 24 }
                }
            )
            Code    = "
            New-UDAntdCard -Id 'reloaded-card' -IsEndpoint -Bordered -Title 'UniversalDashboard' -Content {
                250..2500 | Get-Random
            } -Extra @(
                New-UDAntdButton -Icon 'reload' -ButtonType primary -Shape circle -Size small -OnClick {
                    Sync-UDElement -Id 'reloaded-card'
                }
            ) -HeadStyle @{textAlign = 'left'} -BodyStyle @{fontSize = 24}
"
        }

        [PSCustomObject]@{
            Title   = "TABS"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Content {
                    New-UDAntdCard -Tabs @(
                        @{
                            key     = 'alon'
                            tab     = New-UDAntdIcon -Icon AlertTwoTone -Size sm -PrimaryColor '#1890ff'
                            # disabled = $true
                            content = New-UDMarkdown -Markdown '## Cool Developer'
                        }
                        @{
                            key     = 'icon'
                            tab     = @((New-UDAntdIcon -Icon PictureTwoTone -Size sm -PrimaryColor '#1890ff' -Style @{
                                        marginRight   = 8
                                        display       = 'inline-block'
                                        color         = 'inherit'
                                        fontStyle     = 'normal'
                                        lineHeight    = 0
                                        textAlign     = 'center'
                                        textTransform = 'none'
                                        verticalAlign = '-0.125em'
                                        textRendering = 'optimizeLegibility'
                                        # webkitFontSmoothing = 'antialiased'
                                    }), 'Icon')
                            content = New-UDMarkdown -Markdown '## Cool Icon'
                        }
                        @{
                            key     = 'bugs'
                            tab     = @((New-UDAntdIcon -Icon BugTwoTone -Size sm -PrimaryColor '#3F51B5' -Style @{
                                        marginRight         = 8
                                        display             = 'inline-block'
                                        color               = 'inherit'
                                        fontStyle           = 'normal'
                                        lineHeight          = 0
                                        textAlign           = 'center'
                                        textTransform       = 'none'
                                        verticalAlign       = '-0.125em'
                                        textRendering       = 'optimizeLegibility'
                                        webkitFontSmoothing = 'antialiased'
                                    }), 'Bugs')
                            content = New-UDMarkdown -Markdown '## You have a bug in the `code`' -Styles @{
                                inlinecode = @{
                                    padding         = 4
                                    marginTop       = 16
                                    backgroundColor = '#021d38'
                                    color           = '#e6f7ff'
                                    textAlign       = 'start'
                                    borderRadius    = 4                            
                                }
                            }
                        }
                    ) -DefaultActiveKey bugs -Bordered -HeadStyle @{textAlign = 'left' } -BodyStyle @{padding = 24 } 
                }
            )
            Code    = "
            New-UDAntdCard -Tabs @(
                @{
                    key      = 'alon'
                    tab      = New-UDAntdIcon -Icon AlertTwoTone -Size sm -PrimaryColor '#1890ff'
                    content  = 'Alerts'
                }
                @{
                    key     = 'icon'
                    tab     = @((New-UDAntdIcon -Icon PictureTwoTone -Size sm -PrimaryColor '#1890ff' -Style @{
                                marginRight   = 8
                                display       = 'inline-block'
                                color         = 'inherit'
                                fontStyle     = 'normal'
                                lineHeight    = 0
                                textAlign     = 'center'
                                textTransform = 'none'
                                verticalAlign = '-0.125em'
                                textRendering = 'optimizeLegibility'
                                # webkitFontSmoothing = 'antialiased'
                            }), 'Icon')
                    content = New-UDMarkdown -Markdown (Invoke-RestMethod https://raw.githubusercontent.com/ant-design/ant-design/master/docs/spec/icon.en-US.md )
                }
                @{
                    key     = 'bugs'
                    tab     = @((New-UDAntdIcon -Icon BugTwoTone -Size sm -PrimaryColor '#3F51B5' -Style @{
                                marginRight         = 8
                                display             = 'inline-block'
                                color               = 'inherit'
                                fontStyle           = 'normal'
                                lineHeight          = 0
                                textAlign           = 'center'
                                textTransform       = 'none'
                                verticalAlign       = '-0.125em'
                                textRendering       = 'optimizeLegibility'
                                webkitFontSmoothing = 'antialiased'
                            }), 'Bugs')
                    content = New-UDMarkdown -Markdown (Invoke-RestMethod https://raw.githubusercontent.com/react-component/tabs/master/README.md )
                }
            ) -DefaultActiveKey bugs -Bordered -HeadStyle @{display = 'flex' } -BodyStyle @{padding = 'unset' } 
"
            Notes   = @(
                '>The ```key``` property in every hashtable MUST be uniqe'
            )
        }
        [PSCustomObject]@{
            Title   = "GRID"
            Example = @(
                New-UDAntdRow -Align middle -Justify space-between -Flex -Content {
                    New-UDAntdCard -Title "Grid Of Cards" -GridCards @(
                        @{
                            key       = 'alerts'
                            hoverable = $true
                            style     = @{width = '25%'; textAlign = 'center' }
                            content   = 'Alerts'
                        }
                        @{
                            key       = 'bugs'
                            hoverable = $true
                            style     = @{width = '25%'; textAlign = 'center' }
                            content   = 'Bugs'
                        }
                        @{
                            key       = 'issues'
                            hoverable = $true
                            style     = @{width = '25%'; textAlign = 'center' }
                            content   = 'Issues'
                        }
                        @{
                            key       = 'prs'
                            hoverable = $false
                            style     = @{width = '25%'; textAlign = 'center' }
                            content   = 'PRs'
                        }
                        @{
                            key       = 'users'
                            hoverable = $false
                            style     = @{width = '25%'; textAlign = 'center' }
                            content   = 'Users'
                        }
                    )  
                }
            )
            Code    = "
            New-UDAntdCard -Title 'Grid Of Cards' -GridCards @(
                @{
                    key       = 'alerts'
                    hoverable = $true
                    style     = @{width = '25%'; textAlign = 'center' }
                    content   = 'Alerts'
                }
                @{
                    key       = 'bugs'
                    hoverable = $true
                    style     = @{width = '25%'; textAlign = 'center' }
                    content   = 'Bugs'
                }
                @{
                    key       = 'issues'
                    hoverable = $true
                    style     = @{width = '25%'; textAlign = 'center' }
                    content   = 'Issues'
                }
                @{
                    key       = 'prs'
                    hoverable = $false
                    style     = @{width = '25%'; textAlign = 'center' }
                    content   = 'PRs'
                }
                @{
                    key       = 'users'
                    hoverable = $false
                    style     = @{width = '25%'; textAlign = 'center' }
                    content   = 'Users'
                }
            )  
"
            Notes   = @(
                '>The ```key``` property in every hashtable MUST be uniqe'
            )
        }
    )
}