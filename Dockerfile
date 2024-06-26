# syntax=docker/dockerfile:1
FROM python:3.10-alpine
COPY . /code
WORKDIR /code
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]