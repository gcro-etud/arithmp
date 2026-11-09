FROM ghcr.io/astral-sh/uv:python3.13-alpine AS builder
WORKDIR /app
COPY . /app/

RUN uv build

FROM python:3.13-alpine

COPY --from=builder /app/dist/*.whl /tmp/

#RUN pip install /app/dist/arithmp-0.1.0-py3-none-any.whl avec une seule image
RUN pip install /tmp/*.whl

ENTRYPOINT [ "arithmp" ]