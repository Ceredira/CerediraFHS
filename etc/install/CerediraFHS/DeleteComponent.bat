@echo off

chcp 65001>nul

cd /d %~dp0

rem Получаем корневой каталог исходя из каталога запуска данного скрипта
for %%i in (%~dp0\..\..\..) do set ceredira_path=%%~fxi
rem set ceredira_path=D:\Ceredira_*.*
echo Корневой каталог: %ceredira_path%

del "%ceredira_path%\var\README.md"
del "%ceredira_path%\var\log\README.md"
del "%ceredira_path%\tmp\README.md"
del "%ceredira_path%\README.md"
del "%ceredira_path%\opt\README.md"
del "%ceredira_path%\MDData\images\CerediraFHSMain.png"
del "%ceredira_path%\man\README.md"
del "%ceredira_path%\LICENSE"
del "%ceredira_path%\lib\README.md"
del "%ceredira_path%\home\README.md"
del "%ceredira_path%\etc\ssl\README.md"
del "%ceredira_path%\etc\README.md"
del "%ceredira_path%\etc\install\README.md"
del "%ceredira_path%\etc\install\CerediraFHS\version\1.0.0"
del "%ceredira_path%\etc\install\CerediraFHS\DeleteContextMenu.bat"
rem Этот файл нельзя удалять, так как выполнение скрипта прервется
rem Необходимо удалять отдельными командами из инсталлятора или вручную
rem del "%ceredira_path%\etc\install\CerediraFHS\DeleteComponent.bat"
del "%ceredira_path%\etc\install\CerediraFHS\CreateContextMenu.bat"
del "%ceredira_path%\bin\README.md"
del "%ceredira_path%\.gitignore"


rmdir "%ceredira_path%\var\log"
rmdir "%ceredira_path%\var"
rmdir "%ceredira_path%\tmp"
rmdir "%ceredira_path%\opt"
rmdir "%ceredira_path%\MDData\images"
rmdir "%ceredira_path%\MDData"
rmdir "%ceredira_path%\man"
rmdir "%ceredira_path%\lib"
rmdir "%ceredira_path%\home"
rmdir "%ceredira_path%\etc\ssl"
rmdir "%ceredira_path%\etc\install\CerediraFHS\version"
rem Этот каталог нельзя удалять, так как он не пустой
rem Необходимо удалять отдельными командами из инсталлятора или вручную
rem rmdir "%ceredira_path%\etc\install\CerediraFHS"
rem rmdir "%ceredira_path%\etc\install"
rem rmdir "%ceredira_path%\etc"
rmdir "%ceredira_path%\bin"

pause