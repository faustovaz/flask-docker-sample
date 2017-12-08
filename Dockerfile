#Use --build-arg to pass the parameters USER and USERID

FROM python:3.6

ARG USER=fausto
ARG USERID=99999

RUN apt-get update && apt-get install -y vim
RUN useradd -ms /bin/bash $USER --uid $USERID

COPY app/ /var/flask-app
WORKDIR /var/flask-app

RUN pip install -r requirements.txt

USER $USER
CMD ["python", "app.py"]
