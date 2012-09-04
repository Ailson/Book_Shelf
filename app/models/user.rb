class User < ActiveRecord::Base
  attr_accessible :name, :tel
  has_many :books
  has_many :friends

  def books_borrowed
    self.books.where('friend_id IS NOT NULL')
  end

  def not_borrowed_books
    self.books.where('friend_id IS NULL')
  end
end
