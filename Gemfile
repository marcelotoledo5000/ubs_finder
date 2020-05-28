# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'bootsnap', '~> 1.4', require: false
gem 'geocoder', '~> 1.5'
gem 'jbuilder', '~> 2.9'
gem 'kaminari', '~> 1.2'
gem 'pg', '~> 1.2'
gem 'postgres-copy', '~> 1.4'
gem 'puma', '~> 4.3'
gem 'rails', '~> 6.0'

group :development, :test do
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 5.1'
  gem 'faker', '~> 2.10'
  gem 'pry-byebug', '~> 3.7'
  gem 'rspec-rails', '~> 3.9'
  gem 'rubocop', '~> 0.78.0'
  gem 'rubocop-performance', '~> 1.5'
  gem 'rubocop-rails', '~> 2.4'
  gem 'rubocop-rspec', '~> 1.37'
  gem 'shoulda-matchers', '~> 4.1'
  gem 'simplecov', '~> 0.17.1'
end

group :development do
  gem 'brakeman', '~> 4.7'
  gem 'listen', '>= 3.2'
  gem 'spring', '~> 2.1'
  gem 'spring-watcher-listen', '~> 2.0'
end
