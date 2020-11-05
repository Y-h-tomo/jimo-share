FROM ruby:2.6.5

RUN apt-get update -qq && \
  apt-get install -y apt-utils \
  build-essential \
  libpq-dev \
  nodejs \
  vim \
  default-mysql-client

WORKDIR /jimoshare

ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install -j4

ADD . /jimoshare


EXPOSE 3000
