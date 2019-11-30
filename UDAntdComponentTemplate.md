# CARD HEADER

## Synopsis

Card can have a top toolbar that can accept title and an array of extra buttons

## Examples

### Title

#### Card title as text

```powershell
New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
                        'UniversalDashboard Antd Card'
                    } -BodyStyle @{padding = 24} -HeadStyle @{textAlign = 'left' }
```

New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
                        'UniversalDashboard Antd Card'
                    } -BodyStyle @{padding = 24} -HeadStyle @{textAlign = 'left' }

### Title

#### Title as component

```powershell
New-UDAntdCard -Bordered -Title { New-UDAntdIcon -Icon GithubFill -Size 2x -Color '#fff' } -Content {
                        'UniversalDashboard Antd Card'
                    } -BodyStyle @{padding = 24} -HeadStyle @{
                        textAlign = 'left'
                        backgroundColor = '#0853a5'
                        color = '#fff'
                        border = 'unset'
                        fontVariant = 'small-caps'
                        fontWeight = 800
                        letterSpacing = '0.2rem'
                    }
```

New-UDAntdCard -Bordered -Title { New-UDAntdIcon -Icon GithubFill -Size 2x -Color '#fff' } -Content {
                        'UniversalDashboard Antd Card'
                    } -BodyStyle @{padding = 24} -HeadStyle @{
                        textAlign = 'left'
                        backgroundColor = '#0853a5'
                        color = '#fff'
                        border = 'unset'
                        fontVariant = 'small-caps'
                        fontWeight = 800
                        letterSpacing = '0.2rem'
                    }

### Extra Buttons

#### Card header can accepts extra buttons on the right

```powershell
New-UDAntdCard -Bordered -Title 'universal dashboard' -Content {
                        'UniversalDashboard Antd Card'
                    } -Extra @(
                        New-UDAntdButtonGroup -Content {
                            New-UDAntdButton -Icon 'frown' -ButtonType primary -Size small -OnClick {}
                            New-UDAntdButton -Icon 'smile' -ButtonType primary -Size small -OnClick {}
                        } 
                    ) -HeadStyle @{textAlign = 'left'} -BodyStyle @{padding = 24}
```

New-UDAntdCard -Bordered -Title 'universal dashboard' -Content {
                        'UniversalDashboard Antd Card'
                    } -Extra @(
                        New-UDAntdButtonGroup -Content {
                            New-UDAntdButton -Icon 'frown' -ButtonType primary -Size small -OnClick {}
                            New-UDAntdButton -Icon 'smile' -ButtonType primary -Size small -OnClick {}
                        } 
                    ) -HeadStyle @{textAlign = 'left'} -BodyStyle @{padding = 24}

### Style

Using HeadStyle parameter you can apply custom style to the header.        
The value must be an HashTable and can accepts any css attributes
                    

```powershell
New-UDAntdCard -Bordered -Title 'universal dashboard' -Content {
                        'UniversalDashboard Antd Card'
                    } -HeadStyle @{
                        textAlign = 'left'
                        backgroundColor = '#0853a5'
                        color = '#fff'
                        border = 'unset'
                        fontVariant = 'small-caps'
                        fontWeight = 800
                        letterSpacing = '0.2rem'
                    } -BodyStyle @{padding = 24}
```

New-UDAntdCard -Bordered -Title 'universal dashboard' -Content {
                        'UniversalDashboard Antd Card'
                    } -HeadStyle @{
                        textAlign = 'left'
                        backgroundColor = '#0853a5'
                        color = '#fff'
                        border = 'unset'
                        fontVariant = 'small-caps'
                        fontWeight = 800
                        letterSpacing = '0.2rem'
                    } -BodyStyle @{padding = 24}
