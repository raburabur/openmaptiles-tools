FROM python:3.6

RUN apt-get update \
    && rm -rf /var/lib/apt/lists/

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN pip install .

WORKDIR /import
VOLUME /import

CMD ["import-wikidata"]
