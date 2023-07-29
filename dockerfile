FROM ubuntu

RUN apt update && apt install curl -y

RUN curl -Ik https://sberbank.ru/ru/person
