#!/bin/sh
#
yum install python3 python3-pip -y
python3 -m pip install --upgrade --no-deps --force-reinstall ipykernel jupyterhub notebook
python3 -m ipykernel install
python27 -m pip install --upgrade --no-deps --force-reinstall ipykernel
python27 -m ipykernel install
jupyter nbextension enable --py --sys-prefix widgetsnbextension
