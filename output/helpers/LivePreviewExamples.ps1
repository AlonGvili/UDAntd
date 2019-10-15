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
            Tile    = "SIZE"
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
            Title   = "ENDPOINT"
            Example = @(
                New-UDAntdInput -Id 'demoInput' -size large -PlaceHolder 'Test for endpoint' -onChange { } -OnPressEnter {
                    param($text)

                    Show-UDToast -Message $text
                }

                New-UDAntdInput -Id 'demoInput1' -size large -PlaceHolder 'Test for endpoint' -onChange { } -OnPressEnter {
                    param($args)

                    Show-UDToast -Message $args[1]
                }
            )
            Code    = '
            New-UDAntdInput -Id "demoInput" -size large -PlaceHolder "Test for endpoint" -onChange {} -OnPressEnter {
                param($InputText)

                Show-UDToast -Message $InputText
            }
'
        }
    )
}