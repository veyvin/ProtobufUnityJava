echo ================================================================
echo "input name:"
$str=Read-Host 

$pth=Split-Path -Parent $MyInvocation.MyCommand.Definition
$str1=".proto"
Write-Output $pth

./protoc --java_out ./ $str$str1
./protoc --csharp_out ./ $str$str1



