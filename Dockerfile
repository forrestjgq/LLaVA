ARG BASE=nvcr.io/nvidia/pytorch:23.05-py3

FROM ${BASE} as base

ARG proxy=""
ENV http_proxy="http://$proxy"
ENV https_proxy="http://$proxy"

WORKDIR /app
COPY . .
RUN http_proxy=http://122.97.199.83:17892 https_proxy=http://122.97.199.83:17892 pip install --upgrade pip && pip install -e .

ENV http_proxy=""
ENV https_proxy=""
