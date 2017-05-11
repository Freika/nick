source 'https://rubygems.org'

gem 'rails', '5.0.0.1'
gem 'pg'

gem 'sassc-rails', '~> 1.3.0'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'zeroclipboard-rails'
gem 'slim-rails'
gem 'jquery-rails'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails'
gem 'mini_racer'
gem 'turbolinks'
gem 'globalize', github: 'globalize/globalize'
gem 'activemodel-serializers-xml'
gem 'figaro'
gem 'capistrano-rails-console', require: false
gem 'newrelic_rpm'
gem 'redis'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
  gem 'capybara'
  gem 'factory_girl_rails', '>= 4.7.0'
  gem 'guard-rspec', require: false
end

group :production do
  gem 'rollbar', '~> 2.13.2'
end

group :development do
  gem 'puma'
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rake', require: false
  gem 'capistrano-rvm', github: 'capistrano/rvm'
end

group :test do
  gem 'codeclimate-test-reporter'
end



