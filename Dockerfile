FROM jupyter/datascience-notebook

USER root
WORKDIR /home/jovyan/work
ENV JUPYTER_ENABLE_LAB 'yes'
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8888
