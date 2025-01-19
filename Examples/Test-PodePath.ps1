

function TestPath {
    [CmdletBinding()]
    param()

    Add-PodeRoute -Method Get -Path '/TestPath' -ScriptBlock {

        $myRepsonse = New-Object psobject -Property @{
            Name = "Henrik"
            Sign = "PawWau"
        }
    
        Write-PodeJsonResponse -Value $myRepsonse
    }
}
