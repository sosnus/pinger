#!/bin/bash
docker buildx build --platform=linux/amd64,linux/arm64 --tag sosnus/pinger:1.0.05 .
docker push sosnus/pinger:1.0.05
# docker build --platform arm64 --tag sosnus15/pinger:1.02-arm .
