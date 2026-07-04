FROM python:3.12.8-slim-bullseye@sha256:e2ce9a45656559bd8f2decfaef2be7f6e42de54a1eaa41685ae0f90457cd9f61

RUN pip install --no-cache-dir pytest==8.4.1 pytest-json-ctrf==0.3.5

WORKDIR /app

COPY access.log /app/access.log
