ARG BASE=nvcr.io/nvidia/pytorch:23.08-py3

FROM ${BASE} as base

ARG proxy=""
ENV http_proxy=http://$proxy
ENV https_proxy=http://$proxy
WORKDIR /app
COPY . .
RUN pip install -e .

