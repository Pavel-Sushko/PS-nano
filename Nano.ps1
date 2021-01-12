# Nano from linux
function nano
{
    param ([string][Parameter(ValueFromPipeline=$true)] $Name)
    
    if (Test-Path $Name)
    {
        start notepad++ $Name

        $check = $true

        ls $Name
    }
    else
    {
        echo $check
        New-Item ".\$Name"

        start notepad++ $Name

        ls $Name
    }
}