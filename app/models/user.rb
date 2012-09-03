class User < ActiveRecord::Base
  attr_accessible :name, :tel
<<<<<<< HEAD
  has_many :Books
  has_many :books_borrowed, 
           :foreign_key => "borrowed_to_user", 
           :class_name => "Book"
=======
  has_many :books
  has_many :friends

  def books_borrowed
    self.books.where('friend_id IS NOT NULL')
  end

  def not_borrowed_books
    self.books.where('friend_id IS NULL')
  end
>>>>>>> ed50c4c524b2a5a0a3b9250bc12c3db73e5a34b0
end
