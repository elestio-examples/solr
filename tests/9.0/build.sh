#!/usr/bin/env bash
cp -rf 9.0/* ./
sed -i "s~ARG SOLR_DOWNLOAD_SERVER~ARG SOLR_DOWNLOAD_SERVER="solr.apache.org"~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/solr:9.0 | docker load
