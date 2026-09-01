@echo off
setlocal
cd /d "%~dp0"

where py >nul 2>nul
if %errorlevel%==0 (
  set "PYTHON=py"
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    set "PYTHON=python"
  ) else (
    echo.
    echo No se encontro Python.
    echo Instala Python 3.10 o superior desde https://www.python.org/downloads/
    pause
    exit /b 1
  )
)

if not exist ".venv\Scripts\python.exe" (
  echo Creando el entorno local...
  %PYTHON% -m venv .venv
  if errorlevel 1 goto :error
)

if not exist ".venv\.entorno-listo" (
  echo Instalando dependencias por primera vez...
  .venv\Scripts\python.exe -m pip install --upgrade pip
  if errorlevel 1 goto :error
  .venv\Scripts\python.exe -m pip install -r requirements.txt
  if errorlevel 1 goto :error
  type nul > ".venv\.entorno-listo"
) else (
  echo Dependencias listas.
)

echo.
echo Abriendo JupyterLab. Para detenerlo, cierra esta ventana o presiona Ctrl+C.
.venv\Scripts\python.exe -m jupyter lab --notebook-dir=.
exit /b 0

:error
echo.
echo No se pudo preparar el explorador. Verifica la conexion a Internet y vuelve a intentarlo.
pause
exit /b 1
