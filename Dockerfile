FROM ruby:2.2.6-alpine
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN apk add --no-cache bash build-base
RUN bundle install --without development test
CMD ["/bin/bash", "-c", "tail -f /dev/null;"]
