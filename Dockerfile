FROM jupyter/datascience-notebook:latest
RUN conda install -y --all sqlalchemy psycopg2 ipython-sql && jupyter-notebook list

USER root
RUN apt-get update && apt-get install busybox

USER ${NB_UID}
