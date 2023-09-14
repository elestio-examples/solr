#!/usr/bin/env bash
cp -rf 8.11/* ./
sed -i "s~ARG SOLR_DOWNLOAD_SERVER~ARG SOLR_DOWNLOAD_SERVER="solr.apache.org"~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/solr:8.11 | docker load
