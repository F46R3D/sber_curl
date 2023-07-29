FROM ubuntu

RUN apt update && apt install curl -y

WORKDIR /usr/local/share/ca-certificates/russian_trusted

RUN curl -O https://gu-st.ru/content/lending/russian_trusted_root_ca_pem.crt

RUN curl -O https://gu-st.ru/content/lending/russian_trusted_sub_ca_pem.crt

RUN update-ca-certificates

RUN curl -I https://sberbank.ru/ru/person
