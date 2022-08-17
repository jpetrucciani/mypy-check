ARG pyver=3.10
FROM python:$pyver

LABEL "maintainer"="Jacobi Petrucciani <j@cobi.dev>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh
ADD github.py /github.py

RUN apt-get update && \
    apt-get install -y bash gcc && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -U pip && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
