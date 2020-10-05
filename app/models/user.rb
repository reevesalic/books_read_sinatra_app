class User < ActiveRecord::Base

  has_many :books

  has_secure_password #validates user/pw

  def sorted_books
     self.books.sort_by { |book| book.author }
  end
end