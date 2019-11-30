# CARD HEADER

## Examples

### Example-1

```powershell
New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
    'Just a basic card with header'
} -BodyStyle @{padding = 24} -HeadStyle @{textAlign = 'left' }
```

New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
    'Just a basic card with header'
} -BodyStyle @{padding = 24} -HeadStyle @{textAlign = 'left' }

### Example-2

```powershell
New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
    'Just a basic card with header'
} -BodyStyle @{padding = 24 } -HeadStyle @{textAlign = 'left' } -Cover (
    New-UDImage -Url https://gw.alipayobjects.com/zos/rmsportal/JiqGstEfoWAOHiTxclqi.png -Width 300
)
```

New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
    'Just a basic card with header'
} -BodyStyle @{padding = 24 } -HeadStyle @{textAlign = 'left' } -Cover (
    New-UDImage -Url https://gw.alipayobjects.com/zos/rmsportal/JiqGstEfoWAOHiTxclqi.png -Width 300
)

### Example-3

```powershell
New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
    'Just a basic card with title and buttons'
} -Extra @(
    New-UDAntdButtonGroup -Content {
        New-UDAntdButton -Icon 'frown' -ButtonType primary -Size small -OnClick {}
        New-UDAntdButton -Icon 'smile' -ButtonType primary -Size small -OnClick {}
    } 
) -HeadStyle @{textAlign = 'left'} -BodyStyle @{padding = 24}
```

New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
    'Just a basic card with title and buttons'
} -Extra @(
    New-UDAntdButtonGroup -Content {
        New-UDAntdButton -Icon 'frown' -ButtonType primary -Size small -OnClick {}
        New-UDAntdButton -Icon 'smile' -ButtonType primary -Size small -OnClick {}
    } 
) -HeadStyle @{textAlign = 'left'} -BodyStyle @{padding = 24}
