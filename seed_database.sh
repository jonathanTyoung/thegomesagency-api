#!/bin/bash

rm db.sqlite3
rm -rf ./thegomesagency_apiapi/migrations
python3 manage.py migrate
python3 manage.py makemigrations thegomesagency_apiapi
python3 manage.py migrate thegomesagency_apiapi
python3 manage.py loaddata users
python3 manage.py loaddata tokens

