#!/bin/bash

echo "Installing bundler"
gem install bundler

echo "Installing gems"
bundle install
chown $LOCAL_USER:$LOCAL_USER vendor/bundle -R

echo "Creating databases"
bundle exec rails db:reset db:setup db:migrate
RAILS_ENV=test bundle exec rails db:schema:load db:test:prepare
