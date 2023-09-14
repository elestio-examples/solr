#!/usr/bin/env bash
cp 9.3/* ./
docker buildx build . --output type=docker,name=elestio4test/solr:9.3 | docker load
