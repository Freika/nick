source 'https://rubygems.org'
ruby '2.4.1'

gem 'rails', '5.0.2'
gem 'pg'

gem 'sassc-rails', '~> 1.3.0'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'zeroclipboard-rails', '>= 0.1.2'
gem 'slim-rails', '>= 3.1.2'
gem 'jquery-rails', '>= 4.3.1'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '>= 4.2.1'
gem 'mini_racer'
gem 'turbolinks'
gem 'globalize', github: 'globalize/globalize'
gem 'activemodel-serializers-xml'
gem 'figaro'
gem 'capistrano-rails-console', require: false
gem 'newrelic_rpm'

gem 'puma'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.6', '>= 3.6.0'
  gem 'capybara', '>= 2.14.0'
  gem 'factory_girl_rails', '>= 4.8.0'
  gem 'guard-rspec', require: false
end

group :production do
  gem 'rollbar', '~> 2.13.2'
end

group :development do
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rake', require: false
  gem 'capistrano-rvm', github: 'capistrano/rvm'
end

group :test do
  gem 'codeclimate-test-reporter'
end
