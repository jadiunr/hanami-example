FROM	ruby:2.5.1-alpine
ENV	APP_ROOT /app
WORKDIR	$APP_ROOT
COPY	. $APP_ROOT
RUN	apk add --update \
	  sqlite \
	  sqlite-dev && \
	apk add --virtual \
	  build-dependencies \
	  build-base && \
	gem install bundler && \
	bundle install --jobs=4 && \
	apk del build-dependencies && \
	rm -rf /var/cache/apk/*
