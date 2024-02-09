# ps5-host
Create folder volume before crating the cointainer

## SSL for Users manual
~~~
version: '3.8'
services:
  ps5-host-ssl:
    container_name: ps5-host-ssl
    image: srgi79/ps5-host-ssl:latest
    build: .
    network_mode: host
    privileged: true
    volumes:
      - ssl_data:/document/
    restart: no
volumes:
  ssl_data:
    driver: local
    driver_opts:
      type: 'none'
      o: 'bind'
      device: '/opt/docker/ps5-host-ssl/'
~~~

## NO-SSL for ESP webserver pkg
~~~
version: '3.8'
services:
  ps5-host-nossl:
    container_name: ps5-host-nossl
    image: srgi79/ps5-host-nossl:latest
    build: .
    network_mode: host
    privileged: true
    volumes:
      - no_ssl_data:/document/
    restart: no
volumes:
  no_ssl_data:
    driver: local
    driver_opts:
      type: 'none'
      o: 'bind'
      device: '/opt/docker/ps5-host-nossl/'
~~~
