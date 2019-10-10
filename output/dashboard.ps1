Import-Module $PSScriptRoot\UniversalDashboard.Antd\UniversalDashboard.Antd.psd1 -Force

$Theme = Get-UDTheme -Name Default
$Theme.Definition['main'] = @{padding = 'unset'}

$Dashboard = New-UDDashboard -Title UDAntd -Content {
    New-UDAntdDrawer -Title Antd -Placement right -Content { } -Closable -Width 600 -MaskClosable -Id 'mainDrawer'
    New-UDAntdLayout -Content {

        # site header
        New-UDAntdHeader -Content {

            New-UDAntdMenu -Content {

                New-UDAntdMenuItem -Title Components -Content {
        
                    New-UDAntdIcon -Icon LayoutOutline -Size sm 
                    "Components"
                } 

                New-UDAntdMenuItem -Title Test -Content {
        
                    New-UDAntdIcon -Icon GithubOutline -Size sm 
                    "Github"
                } 

                New-UDAntdMenuItem -Title Test1 -Content {
        
                    New-UDAntdIcon -Icon GitlabOutline -Size sm
                    "Gitlab"
                } 
            
            } -Style @{height = 64; display = 'flex'} 
        
        } -Style @{marginBottom = 50; position = 'fixed'; padding = 0; width = '100%'; zIndex = 1 } 

        New-UDAntdContent -Content {

        } -Style @{padding = 50; margin = '128px 50px 50px 50px'; height = '100vh'; backgroundColor = '#fff'}
        
    } -Style @{backgroundColor = '#1A90FF'}
    
} -Theme $Theme

$Dashboard.FrameworkAssetId = [UniversalDashboard.Services.AssetService]::Instance.Frameworks["Antd"]

Start-UDDashboard -Wait -Dashboard $Dashboard -Force