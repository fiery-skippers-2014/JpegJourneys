source 'https://rubygems.org'

# PostgreSQL driver
gem 'pg'

# Sinatra driver
gem 'sinatra'
gem 'sinatra-contrib'

# Use Thin for our web server
gem 'thin'

gem 'activesupport'
gem 'activerecord'

gem 'rake'
gem 'bcrypt-ruby'
gem 'gravtastic'
gem 'sinatra-flash'
gem 'flickraw'
gem 'httparty'
gem 'dotenv'
gem 'shotgun'
gem 'json'
gem 'oauth2'

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec'
  gem 'capybara'
  gem 'database_cleaner', github: 'bmabey/database_cleaner' # cucumber's utility gem
end

group :test, :development do
  gem 'factory_girl', '~> 2.0.0'
  # gem 'faker'
end
