#!/bin/bash
docker build --platform linux/amd64,linux/arm64 --tag sosnus15/pinger:1.0.3 .
# docker build --platform arm64 --tag sosnus15/pinger:1.02-arm .
docker push sosnus15/pinger:1.0.3
