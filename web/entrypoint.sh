#!/bin/sh

python manage.py makemigrations
python manage.py makemigrations app1
python manage.py migrate
python manage.py createsu

exec "$@"