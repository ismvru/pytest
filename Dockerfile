# Version of base docker image
ARG PY_VERSION=3-slim
FROM python:${PY_VERSION}
COPY requirements.txt /
RUN pip --no-cache-dir install -r /requirements.txt
COPY python-test /usr/local/bin/
WORKDIR /code
CMD ["python-test"]