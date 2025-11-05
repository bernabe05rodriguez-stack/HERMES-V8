@echo off
title HERMES V8
color 0A

echo Iniciando HERMES V8...
echo.

REM Verificar Python
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Python no instalado
    echo Instala Python desde https://www.python.org/downloads/
    pause
    exit /b 1
)

REM Instalar dependencias si es necesario
python -c "import customtkinter, openpyxl, PIL" >nul 2>&1
if %errorlevel% neq 0 (
    echo Instalando dependencias...
    python -m pip install -r requirements.txt
)

REM Ejecutar programa
if exist "Hermes.py" (
    python Hermes.py
) else (
    echo ERROR: Archivo Hermes.py no encontrado
    pause
    exit /b 1
)

echo.
echo Programa finalizado.
pause