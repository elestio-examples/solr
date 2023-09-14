#!/usr/bin/env bash
cp 9.3-slim/* ./
docker buildx build . --output type=docker,name=elestio4test/solr:9.3-slim | docker load
