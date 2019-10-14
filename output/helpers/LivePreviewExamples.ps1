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
            } -ButtonType danger -Shape circle -Style @{margin = '16px auto' }
            Code    = "New-UDAntdButton -Id 'button_loading_example' -Icon 'setting' -Size large -OnClick {
                Set-UDElement -Id 'button_loading_example' -Attributes @{loading = $true}
             } -ButtonType danger -Shape circle -Style @{margin = '16px auto' }"
        }
        
    )
}