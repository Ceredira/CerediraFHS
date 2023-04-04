@echo off

chcp 65001>nul

cd /d %~dp0

rem Получаем корневой каталог исходя из каталога запуска данного скрипта
for %%i in (%~dp0\..\..\..) do set ceredira_path=%%~fxi
rem set ceredira_path=D:\Ceredira_*.*
echo Корневой каталог: %ceredira_path%

echo. && echo Скрипт удаляет только файлы из дистрибутива CerediraFHS
echo. && echo Скрипт не удаляет каталоги, даже пустые каталоги

echo. && echo Далее необходимо подтвердить удаление каждого файла

del "%ceredira_path%\bin\README.md" /p
del "%ceredira_path%\etc\install\CerediraFHS\version\1.0" /p
del "%ceredira_path%\etc\install\CerediraFHS\CreateContextMenu.bat" /p
del "%ceredira_path%\etc\install\CerediraFHS\DeleteContextMenu.bat" /p
del "%ceredira_path%\etc\install\README.md" /p
del "%ceredira_path%\etc\ssl\README.md" /p
del "%ceredira_path%\etc\README.md" /p
del "%ceredira_path%\home\README.md" /p
del "%ceredira_path%\lib\README.md" /p
del "%ceredira_path%\man\README.md" /p
del "%ceredira_path%\opt\README.md" /p
del "%ceredira_path%\tmp\README.md" /p
del "%ceredira_path%\var\log\README.md" /p
del "%ceredira_path%\var\README.md" /p
del "%ceredira_path%\.gitignore" /p
del "%ceredira_path%\LICENSE" /p
del "%ceredira_path%\README.md" /p

echo. && echo После удаления следующего компонента, скрипт будет автоматически закрыт
del "%ceredira_path%\etc\install\CerediraFHS\DeleteComponent.bat" /p

pause