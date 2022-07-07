FROM python:3.9-slim

ENV PYTHONUNBUFFERED 1

ENV APP_HOME /Falcon-framework
WORKDIR $APP_HOME

COPY ./requirements.txt /Falcon-framework/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r /Falcon-framework/requirements.txt

COPY ./falcontest.py /Falcon-framework/falcontest.py

COPY ./utils /Falcon-framework/utils

EXPOSE 8000

CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "falcontest:app"]