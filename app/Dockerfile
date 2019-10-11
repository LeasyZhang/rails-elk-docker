FROM ruby:2.5.1

ENV RAILS_ENV development

WORKDIR /app

ADD Gemfile Gemfile.lock /app/

RUN bundle config mirror.https://rubygems.org https://gems.ruby-china.com \
  && bundle config --global frozen 1 \
  && bundle install --without development test -j4 --retry 3

ADD . /app