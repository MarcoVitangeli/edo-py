# Explorador de EDO con Python

Un espacio de trabajo listo para experimentar con ecuaciones diferenciales ordinarias (EDO). La primera actividad usa únicamente JupyterLab y SymPy.

## Único requisito

Tener instalado Python 3.10 o superior. No hace falta instalar paquetes ni configurar variables de entorno manualmente.

La primera apertura requiere conexión a Internet: el lanzador crea un entorno aislado en `.venv` e instala las dependencias. A partir de ahí, las dependencias quedan instaladas localmente en esa carpeta y el explorador puede abrirse sin volver a descargarlas.

## Windows

1. Descarga o clona este repositorio.
2. Haz doble clic en `iniciar_edo.bat`.
3. Espera a que se abra JupyterLab en el navegador.
4. Abre `explorador_edo.ipynb` y ejecuta las celdas con `Shift + Enter`.

Si Windows pregunta cómo abrir el archivo, selecciona ejecutar o abre una terminal dentro de la carpeta y ejecuta:

```bat
iniciar_edo.bat
```

## macOS y Linux

Desde una terminal en esta carpeta:

```bash
chmod +x iniciar_edo.sh
./iniciar_edo.sh
```

## Qué hace el lanzador

- Crea `.venv`, un entorno virtual aislado para este curso.
- Instala las dependencias definidas en `requirements.txt`.
- Inicia JupyterLab con esta carpeta como directorio de trabajo.

Para detener JupyterLab, vuelve a la terminal o ventana que lo abrió y presiona `Ctrl + C`.

## Archivos importantes

- `explorador_edo.ipynb`: cuaderno inicial con ejemplos de SymPy.
- `iniciar_edo.bat`: entrada recomendada para Windows.
- `iniciar_edo.sh`: entrada para macOS y Linux.
- `requirements.txt`: dependencias del curso. Incluye paquetes para actividades futuras; si se modifica, borra `.venv` para volver a instalarlas.

## Solución de problemas

- **"No se encontro Python"**: instala Python desde [python.org](https://www.python.org/downloads/) y vuelve a abrir el lanzador.
- **La instalación falla**: confirma que tienes Internet durante la primera ejecución y vuelve a ejecutar el lanzador.
- **Quiero empezar de cero**: borra únicamente la carpeta `.venv` y ejecuta de nuevo el lanzador.

El uso de un entorno virtual es el mecanismo recomendado por Python para aislar las dependencias de un proyecto. Consulta la [documentación de `venv`](https://docs.python.org/3/library/venv.html) y la [instalación de JupyterLab](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html).
