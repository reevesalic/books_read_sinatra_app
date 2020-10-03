class BooksController < ApplicationController
#READ
     get '/books' do
       @books = Book.all
       erb :'/books/index'
     end


     # CREATE
     get '/books/new' do
          if logged_in?
            erb :"/books/new"
          else
           redirect '/'
          end
        end

    

     post '/books' do
       @book = Book.new(title: params[:title], author: params[:author], user_id: current_user.id)
       if @book.save
        redirect "/books/#{@book.id}"
        else
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
          # else
               # redirect "/books"
          # end
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