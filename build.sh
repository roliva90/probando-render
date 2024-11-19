#!/bin/bash

# Salir si hay algún error
set -e

# Instalar dependencias
echo "Instalando dependencias..."
pip install -r requirements.txt

# Configurar variables de entorno (si es necesario)
# export DJANGO_SECRET_KEY=your_secret_key
# export DATABASE_URL=your_database_url

# Recolectar archivos estáticos
echo "Recolectando archivos estáticos..."
python manage.py collectstatic --noinput

# Ejecutar migraciones
echo "Ejecutando migraciones..."
python manage.py migrate --noinput

echo "Construcción completada."