class UsersController < ApplicationController

     get "/login" do
     erb :'/users/login'
     end

     post "/login" do
          #finds user
          user = User.find_by(username: params[:username])
          #authenticates user
          
          if user && user.authenticate(params[:password])
               
          #create key/value pair (using id) in the session hash for the user to actually log them in
          
          session[:user_id] = user.id
          
          #redirect to user's show
          redirect "/users/#{user.id}"
          else
          redirect '/login'
          end
     end

     get "/users/:id" do

          @user = User.find_by(id: params[:id])
          erb :'/users/show'
     end

     get '/signup' do
          erb :'/users/signup'
     end

     post '/users' do
          @user = User.create(params)
        
          session[:user_id] = @user.id
          redirect "/users/#{@user.id}"
     end

     get '/logout' do
          session.clear
          redirect '/'
     end

end