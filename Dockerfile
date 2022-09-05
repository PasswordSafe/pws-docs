#escape=\
FROM squidfunk/mkdocs-material:8.4.2

RUN apk add --no-cache nodejs

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt