New-UDPage -Name Welcome -Content {

    New-UDAntdLayout -Style @{backgroundColor = '#1a90ff'} -Content {

        New-UDAntdContent -Content {

            New-UDHeading -Text 'Welcome To UDAntd' -Size 1 -Color '#fff'
        }
    } 
} 