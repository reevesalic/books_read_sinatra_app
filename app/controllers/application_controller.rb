require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # enables the sessions hash
    enable :sessions
    # sets session secret for extra security
    set :session_secret, "secure session"

  end

  get "/" do
    erb :welcome
  end

end
