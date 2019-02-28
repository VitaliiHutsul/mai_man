# config valid only for current version of Capistrano
lock "3.11.0"

set :application, "manhattan"
set :repo_url, "git@gitlab.com:webmil/manhattan.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/deploy/projects/manhattan"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/mongoid.yml", "config/secrets.yml", "config/sms_service.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :bower do
  desc 'Install bower'
  task :install do
    on roles(:web) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'bower:install CI=true'
        end
      end
    end
  end
end
before 'deploy:assets:precompile', 'bower:install'

namespace :task do
  desc 'Install translations'
  task :translations do
    on roles(:web) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'translations:merge'
        end
      end
    end
  end
end
