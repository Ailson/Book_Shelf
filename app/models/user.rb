class User < ActiveRecord::Base
  attr_accessible :name, :tel
  has_many :Books
  has_many :books_borrowed, :foreign_key => "borrowed_to_user", :class_name => "Book"
end
