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
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
    erb :welcome
  end
end

helpers do

  def logged_in?
  !!current_user #(!! = truthy or falsey)
  end

  

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])

    end
    def authorized_to_edit(book)
      book.user == current_user
    end
  end

end
