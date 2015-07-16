FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
WORKDIR /root/mydockerbuild/ror1/Docker-App
ADD Gemfile /root/mydockerbuild/ror1/Docker-App/Gemfile
RUN bundle install
ADD . /root/mydockerbuild/ror1/Docker-App
