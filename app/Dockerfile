FROM python:latest

# Installer l'utilitaire ping
RUN apt-get update && apt-get install -y iputils-ping

EXPOSE 5000

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY app.py /app
COPY . /app

CMD python app.py
