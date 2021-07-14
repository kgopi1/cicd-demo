FROM python:slim-buster

COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY app/ /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]