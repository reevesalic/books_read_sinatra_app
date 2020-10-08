class UsersController < ApplicationController

     get "/login" do
       if !logged_in?
         erb :'/users/login'
       else
         redirect to '/books'
       end
     end

     post "/login" do
       #finds user
       user = User.find_by(:username => params[:username])
       #authenticates user
       if user && user.authenticate(params[:password])
         session[:user_id] = user.id
         redirect to "/books"
       else
         flash[:error] = "Username and/or password were incorrect."
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
      if 
       params[:username] != "" 
       @user = User.create(params)
       session[:user_id] = @user.id
       
       redirect "/books"
     else
      # flash[:error] = "Username cannot be blank."
       erb :'/users/signup'
     end
    end

     get '/logout' do
       session.clear
       redirect '/'
     end
end