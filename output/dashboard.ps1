Import-Module $PSScriptRoot\UniversalDashboard.Antd\UniversalDashboard.Antd.psd1 -Force

$Theme = Get-UDTheme -Name Default
$Theme.Definition['main'] = @{padding = 'unset' }

$Dashboard = New-UDDashboard -Title UDAntd -Content {

    # web app styles
    $content_style = @{padding = 50; margin = '128px 50px 50px 50px'; height = '100vh'; backgroundColor = '#fff' }
    $navbar_style = @{height = 64; display = 'flex'; boxShadow ='unset' } 
    $navbar_item_style = @{display = 'flex'; alignItems = 'center'}
    $header_style = @{
        marginBottom = 50; 
        position = 'fixed';  
        width = '100%'; 
        backgroundColor = '#ffffff'
        zIndex = 1; 
        alignItems = 'center'; 
        display = 'flex'; 
        justifyContent = 'space-between' 
        boxShadow = '0 2px 8px rgba(0, 0, 0, 0.15)'
    }
    $layout_style = @{backgroundColor = '#1A90FF' }
    # $logo_style = @{marginRight = '0px 32px'}

    # web app reused components
    New-UDAntdDrawer -Title Antd -Placement right -Content { } -Closable -Width 600 -MaskClosable -Id 'reused_drawer_right'
    New-UDAntdPopover -Title {'AntdPopover'} -Placement top -Content {} -Children {} -Id 'reused_popover_top'

    # web app main layout
    New-UDAntdLayout -Id 'mainLayout' -Style $layout_style -Content {

        # web app top header
        New-UDAntdHeader -Id 'mainHeader' -Style $header_style -Content {

            New-UDAntdIcon -Icon BugFill -Color '#1A90FF' -Size 3x 
            # web app top navbar
            New-UDAntdMenu -Id 'mainNavbar' -Style $navbar_style -Content {

                New-UDAntdMenuItem -Style $navbar_item_style -Title Components -Content {
                    New-UDAntdIcon -Icon AppstoreFill -Size 2x 
                } 

                New-UDAntdMenuItem -Style $navbar_item_style -Title Test -Content {
                    New-UDAntdIcon -Icon GithubFill -Size 2x
                } 

                New-UDAntdMenuItem -Style $navbar_item_style -Title Test1 -Content {
                    New-UDAntdIcon -Icon CodeFill -Size 2x
                } 
            
            } 
        
        }  

        # web app content
        New-UDAntdContent -Id 'mainContent' -Style $content_style -Content {

            New-UDAntdButton -Label 'add tml' -OnClick {
                Add-UDElement -ParentId 'test' -Content {
                    New-UDAntdTimeLineItem -Content { 'let'} -Position left -Color 'red'
                }
            }
            
            New-UDAntdButton -Label 'add tmr' -OnClick {
                Add-UDElement -ParentId 'test' -Content {
                    New-UDAntdTimeLineItem -Content { 'right'} -Position right -Color 'blue'
                }
            }

            New-UDAntdTimeLine -Mode alternate -IsEndpoint -Id 'test' -Content {

                New-UDAntdTimeLineItem -Color 'blue' -Content { 
                    New-UDAntdCard -Content { 'right' } -Borderd
                 } -Position right
                New-UDAntdTimeLineItem -Color 'red' -Content { 
                    New-UDAntdCard -Content { 'left' } -Borderd
                 } -Position left
                New-UDAntdTimeLineItem -Color 'blue' -Content { 'right' } -Position right
            }
        } 

    }
    
} -Theme $Theme

$Dashboard.FrameworkAssetId = [UniversalDashboard.Services.AssetService]::Instance.Frameworks["Antd"]

Start-UDDashboard -Wait -Dashboard $Dashboard -Force