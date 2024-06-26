# pinger
`docker pull sosnus15/pinger`

A simple application for sending a query to a web application at intervals

https://hub.docker.com/r/sosnus15/pinger

## how to pull and run it?
```bash
sudo docker run --rm -e VTIME=5 -e VNAME=GOOGLE.COM -e VURL=google.com --name pinger_container sosnus15/pinger
```

## parameters
* `VTIME` - delay in seconds, for example `5`
* `VNAME` - name of this service (used in logs) for example `GOOGLE.COM`
* `VURL` - ping url, for example `google.com` or `http://google.com`
