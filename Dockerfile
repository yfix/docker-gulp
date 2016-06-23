FROM yfix/nodejs

MAINTAINER Yuri Vysotskiy (yfix) <yfix.dev@gmail.com>

ADD package.json /tmp/package.json

RUN \
	cd /tmp/ \
	&& npm i -g --only=dev ./package.json \
	&& npm i -g \
		gulp-cli \ 
	\
	&& echo "== the end =="
