$LivePreviewExamplesDB = @{
    Button = @(
        
        [PSCustomObject]@{
            Example = New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType primary -Style @{margin = '16px auto' }
            Code    = "New-UDAntdButton -Label SUBMIT -Size large -OnClick { } -ButtonType primary -Style @{margin = '16px auto'}"
        }

        [PSCustomObject]@{
            Example = New-UDAntdButton -Icon "setting" -Size large -OnClick { } -ButtonType primary -Shape circle -Style @{margin = '16px auto' }
            Code    = "New-UDAntdButton -Icon 'setting' -Size large -OnClick { } -ButtonType primary -Shape circle -Style @{margin = '16px auto'}"
        }

        [PSCustomObject]@{
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
            Example = New-UDAntdButtonGroup -Content {
                New-UDAntdButton -ButtonType primary -Label Show -Size large
                New-UDAntdButton -ButtonType primary -Label Hide -Size large
            } 
            Code    = "
New-UDAntdButtonGroup -Content {
    New-UDAntdButton -ButtonType primary -Label Show -Size large
    New-UDAntdButton -ButtonType primary -Label Hide -Size large
}"
        }

        [PSCustomObject]@{
            Example = New-UDAntdButtonGroup -Content {
                New-UDAntdButton -ButtonType primary -Size small -Icon 'cloud'
                New-UDAntdButton -ButtonType primary -Size small -Icon 'cloud-download'
            } 
            Code    = "
New-UDAntdButtonGroup -Content {
    New-UDAntdButton -ButtonType primary -Size small -Icon 'cloud'
    New-UDAntdButton -ButtonType primary -Size small -Icon 'cloud-download'
}
".Trim()
        }

        [PSCustomObject]@{
            Example = New-UDAntdButtonGroup -Content {
                New-UDAntdButton -Label  A
                New-UDAntdButton -Label  N
                New-UDAntdButton -Label  T
                New-UDAntdButton -Label  D            
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