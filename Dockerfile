FROM ruby:2.2.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client
RUN apt-get install emacs24-nox -y
ENV TERM xterm-256color
RUN mkdir /app
WORKDIR /app
EXPOSE 3000
