@echo off
chcp 65001 >nul
title HERMES V8 - Optimizado
color 0A

echo.
echo ========================================
echo      🚀 HERMES V8 - OPTIMIZADO
echo ========================================
echo.
echo Inicializando sistema avanzado...
echo.

REM Verificar si Python esta instalado
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ ERROR: Python NO esta instalado
    echo.
    echo ========================================
    echo   INSTALA PYTHON PRIMERO
    echo ========================================
    echo.
    echo 1. Ve a: https://www.python.org/downloads/
    echo 2. Instala Python 3.11 o superior
    echo 3. Marca "Add Python to PATH" durante la instalacion
    echo 4. Reinicia y ejecuta este archivo nuevamente
    echo.
    pause
    exit /b 1
)

echo ✅ Python detectado:
python --version
echo.

REM Verificar dependencias
echo 🔍 Verificando dependencias...
python -c "import customtkinter, openpyxl, PIL" >nul 2>&1
if %errorlevel% neq 0 (
    echo ⚠️  Faltan dependencias. Instalando...
    echo.
    
    REM Intentar con requirements optimizado primero
    if exist "requirements_optimized.txt" (
        echo Usando requirements optimizado...
        python -m pip install -r requirements_optimized.txt
    ) else (
        echo Usando requirements original...
        python -m pip install -r requirements.txt
    )
    
    if %errorlevel% neq 0 (
        echo ❌ Error al instalar dependencias
        echo Ejecuta INSTALAR.bat manualmente
        pause
        exit /b 1
    )
    echo ✅ Dependencias instaladas correctamente
    echo.
else (
    echo ✅ Todas las dependencias estan disponibles
    echo.
)

REM Verificar que exista al menos un archivo principal
if exist "Hermes_optimized.py" (
    echo 🚀 Iniciando HERMES V8 Optimizado...
    echo.
    python Hermes_optimized.py
) else if exist "Hermes.py" (
    echo 🚀 Iniciando HERMES V8...
    echo.
    python Hermes.py
) else (
    echo ❌ ERROR: No se encontro el archivo principal
    echo.
    echo Archivos buscados:
    echo - Hermes_optimized.py
    echo - Hermes.py
    echo.
    echo Verifica que los archivos esten en la carpeta correcta
    pause
    exit /b 1
)

REM Si llega aqui, el programa termino normalmente
echo.
echo ========================================
echo    ✅ HERMES V8 - Finalizado
echo ========================================
echo.
echo El programa se cerro correctamente.
echo.
echo Presiona cualquier tecla para salir...
pause >nul