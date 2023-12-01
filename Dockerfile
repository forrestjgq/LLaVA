ARG BASE=nvcr.io/nvidia/pytorch:23.08-py3

FROM ${BASE} as base

ARG proxy=""

WORKDIR /app
COPY . .
RUN http_proxy=http://$proxy https_proxy=$proxy pip install -e .

