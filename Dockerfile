# Version of base docker image
ARG PY_VERSION=3-slim
FROM python:${PY_VERSION}
COPY req.txt /
RUN pip --no-cache-dir install -r /req.txt
COPY python-test /usr/local/bin/
WORKDIR /code
CMD ["python-test"]