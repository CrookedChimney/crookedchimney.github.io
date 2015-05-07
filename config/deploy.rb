set :application, "prodhopper.com site"
set :repository,  "git@github.com:crookedchimney/ProdHopperPlaceholder.git"

set :user, 'cctg'
set :scm_passphrase, 'cctg1234CCTG'
set :ssh_options, { :forward_agent => true }
set :use_sudo, false
set :scm, :git 

# if we want to determine version for deployment we can simply make it via CLI:
# cap deploy -S version="tag/branch"
set :branch, fetch(:version, `git tag`.split("\n").last)

set :keep_releases, 2
set :deploy_via, :remote_cache

set :webserver_user, "www-data"
set :permission_method, :acl
set :use_set_permissions, false

set :normalize_asset_timestamps, false

task :production do
  set :user, "ubuntu"
  #set :password, "use_public_key_instead"
  
  set :domain, "ec2-184-73-48-169.compute-1.amazonaws.com"

  role :app, domain, :primary => true
  role :web, domain
  role :db, domain

  set :env, "prod"
  set :deploy_to, "/home/ubuntu/www.prodhopper.com"
end

#task :staging do
#  set :user, "ubuntu"
#  set :password, "q5k29cj4t5"
#    
#  set :domain, "23.21.167.33"
#
#  role :app, domain, :primary => true
#  role :web, domain
#  role :db, domain
#
#  set :env, "stage"
#  set :deploy_to, "/home/ubuntu/www.prodhopper.com"
#end