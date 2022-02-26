FROM ruby:3.1.0

COPY Gemfile Gemfile.lock /usr/src/app/

RUN   apt-get update -qq && apt-get install -y sqlite3 libsqlite3-dev

# Stay in sync with the version of bundler referenced in the Gemfile.lock
RUN gem install bundler:2.3.8

ENV GEM_HOME="/usr/src/app/vendor/.bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

WORKDIR /usr/src/app
ENTRYPOINT ["/usr/src/app/bin/docker-entrypoint.sh"]
