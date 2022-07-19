# TOR Proxy

This repo contains containerized Tor service. It allows simply use Tor as a proxy for any service.

```sh
docker build -t tor-proxy .
docker run -d --rm -p 9050:9050 tor-proxy
curl --socks5 http://localhost:9050 -L http://ifconfig.me
```
