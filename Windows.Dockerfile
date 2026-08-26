ARG PIXI_VERSION=0.77.1
ARG BASE_IMAGE=mcr.microsoft.com/windows/server:ltsc2022
FROM $BASE_IMAGE

ARG PIXI_VERSION
ENV PIXI_VERSION=${PIXI_VERSION}
CMD ["powershell"]
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN Set-ExecutionPolicy Bypass -Scope Process -Force; irm -useb https://pixi.sh/install.ps1 | iex
