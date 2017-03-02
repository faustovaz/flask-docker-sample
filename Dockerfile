FROM python:3.6

RUN apt-get update
RUN apt-get install -y vim
RUN useradd -ms /bin/bash fausto

ADD app/ /home/fausto/flask-app
WORKDIR /home/fausto/flask-app

RUN pip install -r requirements.txt

USER fausto
CMD ["python", "app.py"]
