class BooksController < ApplicationController


     #READ
     get '/books' do
       if !logged_in?
         redirect '/'
       else
         @books = Book.all
         erb :'/books/index'
       end
     end

     # CREATE
     get '/books/new' do
       if logged_in?
         erb :"/books/new"
       else
          flash[:error] = "You must be logged in to add a new book."
         redirect '/'
       end
     end

     post '/books' do
       @book = Book.new(title: params[:title], author: params[:author], user_id: current_user.id)
       params[:title] != "" && params[:author] != ""
         if @book.save
           flash[:message] = "Added a new book successfully."
           redirect "/books/#{@book.id}"
         else
           flash[:error] = "Add a new book failed. #{@book.errors.full_messages.to_sentence}."
           redirect '/books/new'
       end
     end

     get '/books/:id' do
       @book = Book.find(params[:id])
       erb :'/books/show'
     end

     # UPDATE
     get '/books/:id/edit' do
       @book = Book.find(params[:id])
          # if authorized_to_edit(@book)
       erb :'/books/edit'
     end

     # sends params to update new book
     patch '/books/:id' do
       @book = Book.find(params[:id])
       @book.update(title: params[:title], author: params[:author], image_url: params[:image_url])
       redirect "/books"
     end

          # DELETE
     delete '/books/:id' do
       @book = Book.find(params[:id])
       @book.destroy
       redirect '/books'
     end
end