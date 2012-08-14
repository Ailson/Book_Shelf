class Book < ActiveRecord::Base
  #before_save
  validates :title, :picture,  :presence => true
  attr_accessible :description, :picture, :title
  belongs_to :User
  belongs_to :borrowed_to, :class_name => "User"

  def get_availability   
    if(self.borrowed)
      "borrowed since: " + self.date_borrowed.to_s(:long)
    else
      "available"
    end
  end
  
  def borrow(user)
    self.borrowed = true
    self.date_borrowed = Date.today
    user.books_borrowed << self
  end

  def unborrow
    self.borrowed = false
    self.date_borrowed = nil
  end
end
