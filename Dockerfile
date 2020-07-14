FROM python:stretch

WORKDIR /app
COPY main.py /app
COPY requirements.txt /app

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
