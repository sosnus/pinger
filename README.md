# pinger
`docker pull sosnus15/pinger`

A simple application for sending a query to a web application at intervals

https://hub.docker.com/r/sosnus15/pinger

## how to run it?

### how to run using docker bash?
see `run.sh` file from this repository

### how to run it using docker-compose file?
see `docker-compose.yaml` file from this repository

## how to pull and run it?
```bash
sudo docker run --rm -e VTIME=5 -e VNAME=GOOGLE.COM -e VURL=google.com --name pinger_container sosnus15/pinger
```
if You have problem, use `'`, for example:
```bash
sudo docker run --rm -e VTIME=5 -e VNAME=GOOGLE.COM -e VURL='https://www.google.com/' --name pinger_container sosnus15/pinger
```

if You want run container in background, and use permanently with system autostart, use:
```bash
sudo docker run --rm -d --restart unless-stopped -e VTIME=5 -e VURL='https://www.google.com/' -e VURL=google.com --name pinger_container sosnus15/pinger
```

## parameters
* `VTIME` - delay in seconds, for example `5`
* `VNAME` - name of this service (used in logs) for example `GOOGLE.COM`
* `VURL` - ping url, for example `google.com` or `http://google.com`


## TODO
* try again if problem with curl
* what with error "curl: (6) Could not resolve host: mws02-50458.wykr.es"
