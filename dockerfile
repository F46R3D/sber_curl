FROM ubuntu

WORKDIR /usr/local/share/ca-certificates/russian_trusted

ADD https://gu-st.ru/content/lending/russian_trusted_root_ca_pem.crt .

ADD https://gu-st.ru/content/lending/russian_trusted_sub_ca_pem.crt .

RUN apt update && apt install curl -y && update-ca-certificates && curl -I https://sberbank.ru/ru/person

RUN openssl x509 -enddate -noout -in russian_trusted_root_ca_pem.crt

RUN openssl x509 -enddate -noout -in russian_trusted_sub_ca_pem.crt
