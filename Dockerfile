FROM ruby:alpine

RUN apk update && apk add build-base

RUN mkdir /app

WORKDIR /app

COPY . .

RUN bundle install

CMD ["bundle exec rspec"]
