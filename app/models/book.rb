class Book < ActiveRecord::Base
  attr_accessible :author, :book_name, :category, :isbn_number, :published_at, :category_list

  category_list = ["Historical"]

  validates :author, :presence => true, :uniqueness => true

  validates :book_name, :presence => true

  validates :category, :presence => true

  validates :isbn_number, :presence => true, :uniqueness => true, :numericality => true

  validates :published_at, :presence => true

end