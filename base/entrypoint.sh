#!/bin/bash

# Instalar Jupyter si no está instalado
if ! command -v jupyter &> /dev/null; then
    echo "Jupyter no encontrado. Instalando..."
    pip install notebook --quiet
fi

# Verificar que el directorio de notebooks exista
if [ ! -d "/media/notebooks" ]; then
    echo "Creando el directorio de notebooks..."
    mkdir -p /media/notebooks
fi

# Cambiar permisos para que Jupyter tenga acceso
chmod -R 777 /media/notebooks

# Ejecutar el comando principal
exec "$@"

