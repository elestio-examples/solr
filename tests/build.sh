#!/usr/bin/env bash
cp 9.2/* ./
sed -i "s~ARG SOLR_DOWNLOAD_SERVER~ARG SOLR_DOWNLOAD_SERVER="solr.apache.org"~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/solr:latest | docker load
