require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rails/console'
require 'capistrano/rvm'
require 'capistrano/rake'
set :rvm_type, :user
set :rvm_ruby_version, '2.4.1'

Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
