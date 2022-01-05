FROM python:3.10.1-alpine3.15

COPY ./ /yamllint
WORKDIR /yamllint
RUN python setup.py -v install

ENTRYPOINT ["yamllint"]
