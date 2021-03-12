# Nano from linux
$application = [string]"notepad++"

function nano
{
    param ([string][Parameter(ValueFromPipeline=$true)] $Name)
    
    if (Test-Path $Name)
    {
        start $application $Name

        $check = $true

        ls $Name
    }
    else
    {
        echo $check

        New-Item ".\$Name"

        start $application $Name

        ls $Name
    }
}
