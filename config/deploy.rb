require "config/capistrano_db"

default_run_options[:pty] = true
set :application, "ecool"
set :repository,  "git@github.com:troya/ecool.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :scm_command, "/home/scriptge/lib/bin/git"
set :local_scm_command, :default 

set :deploy_to, "/home/scriptge/rails/ecool_release"
set :user, "scriptge"
set :use_sudo, false

role :web, "scriptgeek.org"                          # Your HTTP server, Apache/etc
role :app, "scriptgeek.org"                          # This may be the same as your `Web` server
role :db,  "scriptgeek.org", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

set :template_dir, "/home/scriptge/rails/ecool_template"


namespace :deploy do
   task :start do
   end
   task :stop do
   end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
task :production do
  set :deploy_to, "/home/scriptge/rails/ecool_release"
 
end

task :staging do
  set :deploy_to, "/home/scriptge/rails/ecool_staging"
  
end

namespace :backup do

  task :default do
    web
    database
  end

  task :web, :roles => :web do
    puts "Backing Up Web Server"
  end

  task :database, :roles => :db do
    puts "Backing Up DB Server"
  end

end


