#!/bin/bash
export WORKSPACE=`pwd`
# Create/Activate virtualenv
python3 -m venv venvv
source venvv/bin/activate
# Install Requirements
pip3 install -r requirements.txt
pip3 install uwsgi
touch jenkinscicdlog.log
killall uwsgi
uwsgi --module=jenkinscicd.wsgi --http-socket=0.0.0.0:8023 --daemonize=jenkinscicdlog.log