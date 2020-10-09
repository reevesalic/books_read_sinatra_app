require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
#sends patch and delete requests
use Rack::MethodOverride

#Here is where you mount the controllers so they can be used.
use BooksController
use UsersController

run ApplicationController

#This file enables us to leverage rack.
 
