#!/usr/bin/env bash
cp 9.2/* ./
docker buildx build . --output type=docker,name=elestio4test/solr:latest | docker load