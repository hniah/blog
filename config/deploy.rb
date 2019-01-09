# config valid only for current version of Capistrano
lock '3.10.2'

set :application, 'blog'

set :repo_url, 'git@gitlab.com:anthony.hnhai/journey.git'

set :deploy_to, '/home/deploy/blog'

# Set Rails env to production
set :rails_env, 'production'

set :migration_role, :app
set :conditionally_migrate, true
set :migration_servers, -> { primary(fetch(:migration_role)) }

# Restart Passenger with restart.txt
set :assets_roles, :app
set :passenger_restart_with_touch, true
set :passenger_roles, :app
set :passenger_restart_with_sudo, false
set :passenger_restart_wait, 5
set :passenger_restart_command, 'passenger-config restart-app'
set :passenger_restart_options, -> { "#{deploy_to} --ignore-app-not-running" }
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

set :log_level, :debug

# Default value for :format is :pretty
set :format, :pretty

namespace :deploy do
  after :restart, :clear_cache do
    on roles(:app), in: :groups, limit: 3, wait: 10 do
    end
  end
end