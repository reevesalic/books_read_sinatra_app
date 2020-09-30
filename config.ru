require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
#sends patch and delete requests
'use Rack::MathodOverride'

run ApplicationController