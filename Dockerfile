FROM python:slim-buster

COPY app/ /app

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]