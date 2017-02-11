FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /buscorepublica
WORKDIR /buscorepublica
ADD Gemfile /buscorepublica/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /buscorepublica

RUN bundle install
