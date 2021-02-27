#!/bin/bash
pip3 install -r requirements.txt
gunicorn jenkinscicd.wsgi --name jendjango --bind=0.0.0.0:8000 --daemon