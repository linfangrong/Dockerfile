SHELL=/bin/bash

default: centos_7_tencent_develop

centos_7_tencent_develop:
	docker build -t centos:7_develop -f develop/centos_7_tencent_develop_Dockerfile .
