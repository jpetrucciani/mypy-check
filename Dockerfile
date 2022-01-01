FROM python:3.9.9-alpine

LABEL "maintainer"="Jacobi Petrucciani <j@cobi.dev>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh
ADD github.py /github.py

RUN apk add bash gcc musl-dev && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
