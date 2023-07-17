#!/usr/bin/env bash
cp 9.2/* ./
docker buildx build --build-arg SOLR_DOWNLOAD_SERVER=solr.apache.org . --output type=docker,name=elestio4test/solr:latest | docker load
