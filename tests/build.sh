#!/usr/bin/env bash
sed -i 's/\(SOLR_DOWNLOAD_SERVER\)/SOLR_DOWNLOAD_SERVER="solr.apache.org"/' 9.2/Dockerfile
cp 9.2/* ./
docker buildx build --build-arg SOLR_DOWNLOAD_SERVER=solr.apache.org . --output type=docker,name=elestio4test/solr:latest | docker load
