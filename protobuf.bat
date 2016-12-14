@echo off
@echo ================================================================
echo 1.signal file
echo 2.files

set /p sel="select:"

if "%sel%"=="1" cls&goto one
if "%sel%"=="2" cls&goto two
if "%sel%"=="q" exit
:err
cls
echo error
pause
exit

:one
set pth=%cd%
set /p str="input name:"
set str1=".proto"
 %pth%\protoc --java_out ./ %str%%str1%
 %pth%\protoc --csharp_out ./ %str%%str1%
pause
exit

:two
set pth1=%cd%
set /p str2="input file name:"
set FolderName= %pth1%\%str2%

for /f "delims=\" %%a in ('dir /b /a-d /o-d %FolderName%\*.proto') do (
    echo  %FolderName%\%%a
rem 绝对路径转相对路径
%pth1%\protoc --java_out ./%str2%  %%a
%pth1%\protoc --csharp_out ./%str2%  %%a
)




pause
exit


@echo ========================================================

