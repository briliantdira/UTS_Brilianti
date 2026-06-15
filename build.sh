#!/usr/bin/env bash
# build.sh — dijalankan Render saat deploy

set -o errexit  # stop jika ada error

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
