HOME = $(shell pwd)
runtime_home = $(HOME)/nginx
nginx = /home/service/nginx/sbin/nginx
nginx_config = $(HOME)/conf/main.conf

all: 
	sh tools/setup.sh



start:
	$(nginx) -p $(runtime_home) -c $(nginx_config)
reload:
	$(nginx) -p $(runtime_home) -c $(nginx_config) -s reload
stop:
	$(nginx) -p $(runtime_home) -c $(nginx_config) -s stop
