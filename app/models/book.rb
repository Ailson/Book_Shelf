class Book < ActiveRecord::Base
  #before_save
  validates :title, :picture,  :presence => true
  attr_accessible :description, :picture, :title
  belongs_to :user
  belongs_to :borrowed_to,
             :class_name => "User"
  
  def get_availability   
    if(self.borrowed)
      "borrowed since: " + self.date_borrowed.to_s(:long)
    else
      "available"
    end
  end
  
  def lend_to(user)
    self.borrowed = true
    self.date_borrowed = Date.today
    user.books_borrowed << self
  end

  def unborrow(user)
    self.borrowed = false
    self.date_borrowed = nil
    
    user.books_borrowed.delete(self)
  end
end
