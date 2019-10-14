$LivePreviewExamplesDB = @{
    Button      = @(
        
        [PSCustomObject]@{
            Title   = "BASIC"
            Example = New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType primary -Style @{margin = '16px auto' }
            Code    = "New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType primary -Style @{margin = '16px auto'}"
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
            Code    = "New-UDAntdButton -Icon 'setting' -Size large -OnClick { } -ButtonType primary -Shape circle -Style @{margin = '16px auto'}"
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
}