#!/usr/bin/env bash
# build.sh — dijalankan Railway saat deploy

set -o errexit

pip install -r requirements.txt
python manage.py collectstatic --no-input
python manage.py migrate --no-input
