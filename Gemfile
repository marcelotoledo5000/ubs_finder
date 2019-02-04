source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'jbuilder', '~> 2.8'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'postgres-copy', '~> 1.4', '>= 1.4.1'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.2'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 5.0'
  gem 'faker', '~> 1.9', '>= 1.9.1'
  gem 'pry-byebug', '~> 3.6'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'rubocop'
  gem 'shoulda-matchers', '4.0.0.rc1'
  gem 'simplecov'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
