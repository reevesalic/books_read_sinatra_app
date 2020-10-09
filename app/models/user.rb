#Inherits from ActiveRecord
class User < ActiveRecord::Base


  has_many :books #association to books

  has_secure_password #validates user/pw

  validates :username, uniqueness: true

  def sorted_books
     self.books.sort_by { |book| book.author }
  end
end