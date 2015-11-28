require 'bundler/capistrano'

after "deploy:update_code", :copy_database_config
task :copy_database_config, roles => :app do
  db_config = "#{shared_path}/database.yml"
  run "cp #{db_config} #{release_path}/config/database.yml"
end

after "deploy:update_code", :copy_yandex_confirm
task :copy_yandex_confirm, roles => :app do
  yandex_file = "#{shared_path}/yandex_681888d15b87c391.html"
  run "cp #{yandex_file} #{release_path}/public/yandex_681888d15b87c391.html"
end

load 'deploy/assets'
ssh_options[:forward_agent] = true

set :application,     "nick"
set :deploy_server,   "phosphorus.locum.ru"
set :keep_releases, 3

set :bundle_without,  [:development, :test]

set :user,            "hosting_frey"
set :login,           "frey"
set :use_sudo,        false
set :deploy_to,       "/home/#{user}/projects/#{application}"
set :unicorn_conf,    "/etc/unicorn/#{application}.#{login}.rb"
set :unicorn_pid,     "/var/run/unicorn/#{user}/#{application}.#{login}.pid"
set :bundle_dir,      File.join(fetch(:shared_path), 'gems')
role :web,            deploy_server
role :app,            deploy_server
role :db,             deploy_server, :primary => true

set :rvm_ruby_string, "2.1.2"
set :rake,            "rvm use #{rvm_ruby_string} do bundle exec rake"
set :bundle_cmd,      "rvm use #{rvm_ruby_string} do bundle"

set :scm,             :git

 set :repository,    "git@github.com:Freika/nick.git"
## --- Ниже этого места ничего менять скорее всего не нужно ---

before 'deploy:finalize_update', 'set_current_release'
task :set_current_release, :roles => :app do
    set :current_release, latest_release
end

  set :unicorn_start_cmd, "(cd #{deploy_to}/current; rvm use #{rvm_ruby_string} do bundle exec unicorn_rails -Dc #{unicorn_conf})"


# - for unicorn - #
namespace :deploy do
  desc "Start application"
  task :start, :roles => :app do
    run unicorn_start_cmd
  end

  desc "Stop application"
  task :stop, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -QUIT `cat #{unicorn_pid}`"
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -USR2 `cat #{unicorn_pid}` || #{unicorn_start_cmd}"
  end
end
