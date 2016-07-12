# config valid only for current version of Capistrano
lock '3.5.0'

set :application, 'spree'
set :repo_url, 'git@github.com:profeg/spree.git'
set :deploy_to, '/var/www/html/spree'
set :scm, :git
set :rvm_type, :system
set :rvm_ruby_version, 'ruby-2.2.1@spree'

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
