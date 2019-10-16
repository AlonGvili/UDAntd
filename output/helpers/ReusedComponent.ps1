$ComponentContentSwitch = New-UDAntdHeader -Style $WebAppStyles['ComponentContentSectionHeader'] -Content {
    New-UDAntdRadioGroup -Size default -ButtonStyle outline -Content {
        Set-Item -Path "Cache:ContentToDisplay" -Value "showExample"
        New-UDAntdRadioButton -Content { "Get-Help" } -Value "showDoc" 
        New-UDAntdRadioButton -Content { "Show-Preview" } -Value "showExample" 
        New-UDAntdRadioButton -Content { "Open-PlayGround" } -Value "showPlayground" 
        # Set-LivePreviewPage
    } -OnChange {
        Set-Item -Path "Cache:ContentToDisplay" -Value $EventData
        Set-LivePreviewPage
    } 
}

$ComponentContentSection = New-UDAntdContent -Id 'ComponentContentSection' -Content {} -Style $WebAppStyles['ComponentContentSection']
$DrawerRight = New-UDAntdDrawer -Id 'DrawerRight' -Title Antd -Placement right -Content { } -Closable -Width 600 -MaskClosable 
$PopoverTop = New-UDAntdPopover -Id 'PopoverTop' -Title { 'AntdPopover' } -Placement top -Content { } -Children { } 
