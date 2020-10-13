#Inherits from ActiveRecord. Replaces initialize methods, etc. 
class Book < ActiveRecord::Base

  belongs_to :user #association to user

  validates :title, :author, presence: true
  
end

