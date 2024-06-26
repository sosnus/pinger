#!/bin/bash
sudo docker pull sosnus15/pinger
sudo docker run --rm -e VTIME=5 -e VNAME=GOOGLE.COM -e VURL=google.com --name pinger_container sosnus15/pinger