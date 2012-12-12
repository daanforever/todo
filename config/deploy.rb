set :application, "todo"
set :repository,  "ssh://git@dron.me/opt/git/todo.git"
set :branch, "master"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "dron.me"                          # Your HTTP server, Apache/etc
role :app, "dron.me"                          # This may be the same as your `Web` server
role :db,  "dron.me", :primary => true      # This is where Rails migrations will run
# role :db,  "your slave db-server here"

set :scm, :git
set :deploy_to, "/opt/apps/#{application}"
set :use_sudo, false
set :user, "dan"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  desc "Start the Thin processes"
  task :start do
    run "cd #{deploy_to}/current; bundle exec thin -C config/thin.yml start"
  end

  desc "Stop the Thin processes"
  task :stop do
    run "cd #{deploy_to}/current; bundle exec thin -C config/thin.yml stop"
  end

  desc "Restart the Thin processes"
  task :restart do
    run "cd #{deploy_to}/current; test -e tmp/pids/thin.pid && bundle exec thin -C config/thin.yml restart || bundle exec thin -C config/thin.yml start"
  end

end