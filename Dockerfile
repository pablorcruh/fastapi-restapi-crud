FROM python:3.6.1-alpine
RUN apk update \
    apk add \
    build-base 
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
COPY ./code .
CMD ["/usr/src/app/test", "pytest"]

