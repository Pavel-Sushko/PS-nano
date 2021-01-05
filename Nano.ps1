# Nano from linux
function nano {
Param ([string]$f)
if ($f = "$f.txt") {
    $e = [io.path]::GetFileNameWithoutExtension(".\$f")
    $f = $e
    if (Test-Path $f -PathType leaf){
    start notepad++ $f
    }
    else {
    New-Item .\$f
    start notepad++ $f}
    }
else{
    if (Test-Path "$f.txt" -PathType leaf){
    start notepad "$f.txt"
    }
    else {
    New-Item ".\$f.txt"
    start notepad "$f.txt"}
    }
ls $f*
}
