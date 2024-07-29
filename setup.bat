@echo off
setlocal

REM Caminho do executável de origem relativo ao diretório do script
set SRC_DIR=%~dp0source\ConfuserEx_bin
set DEST_DIR=%ProgramFiles%\ConfuserEx

REM Verifica se o diretório de origem existe
if not exist "%SRC_DIR%" (
    echo Source directory not found: %SRC_DIR%
    goto :EOF
)

REM Cria o diretório de destino se não existir
if not exist "%DEST_DIR%" (
    mkdir "%DEST_DIR%"
)

REM Copia todos os arquivos do diretório de origem para o diretório de destino
xcopy "%SRC_DIR%\*" "%DEST_DIR%\" /E /H /C /I

REM Adiciona o diretório ao PATH do sistema, se não estiver presente
setlocal enabledelayedexpansion
set "CURRENT_PATH=%PATH%"
set "DIR_IN_PATH=false"

for %%A in ("%PATH:;=" "%") do (
    if /I "%%~A"=="%DEST_DIR%" (
        set "DIR_IN_PATH=true"
    )
)

if "!DIR_IN_PATH!"=="true" (
    echo Directory already in PATH.
    goto :EOF
)

REM Adiciona o diretório ao PATH do sistema
echo Adding directory to PATH...
setx PATH "%CURRENT_PATH%;%DEST_DIR%" /M

echo Installation complete. You can use the 'Confuser.CLI' command from anywhere.
pause
