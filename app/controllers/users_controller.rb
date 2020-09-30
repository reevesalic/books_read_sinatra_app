class UsersController < ApplicationController

     get "/login" do
     erb :login
     end

     post "/login" do
          #finds user
          user = User.find_by(username: params[:username])
          #authenticates user
          
          if user && user.authenticate(params[:password])
               
         #create key/value pair (using id) in the session hash for the user to actually log them in
          
          session[:user_id] = user.id
          # binding.pry
          #redirect to user's show
          redirect "/users/#{user.id}"
          else
         redirect 'login'
     end
end

get "/users/:id" do
   "users show page!"
end
end