class Book < ActiveRecord::Base
  attr_accessible :author, :book_name, :category, :isbn_number, :published_at
end
