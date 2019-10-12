# Helper functions
function Update-ComponentContentSection {
    param(
        $Doc,
        $Example
    )
    $MarkdownDoc = Invoke-RestMethod "https://udantd.site/AntdDocs/$Doc"
    $MDoc = New-UDMarkdown -Markdown $MarkdownDoc

    Set-Item -Path "Cache:CommandDoc" -Value $MDoc
    Set-Item -Path "Cache:CommandExample" -Value $Example

    $WhatToShow = Get-Item "Cache:ContentToDisplay"
    Set-UDElement -Id 'componentInfoContent' -Content { 
        if ($WhatToShow -eq "showDoc") {
            $MDoc
        }
        else {
            $Example
        }
    }
}

function Get-CommandExample {
    param(
        [Parameter()]
        [object[]]$Examples
    )

    process{
        foreach($Example in $Examples){
            
        }
    }
}
