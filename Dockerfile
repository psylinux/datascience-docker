FROM jupyter/datascience-notebook:latest
RUN conda install -y --all sqlalchemy psycopg2 ipython-sql pillow html5lib twython mnist

USER root
RUN apt-get update && apt-get install busybox -y && apt-get clean

USER ${NB_UID}
