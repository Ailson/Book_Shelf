class Book < ActiveRecord::Base
<<<<<<< HEAD
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
=======
  validates :title, :picture,  :presence => true
  attr_accessible :description, :picture, :title
  belongs_to :owner, :class_name => "User", :foreign_key => "user_id"
  belongs_to :lent_to, :class_name => "Friend", :foreign_key => "friend_id"

  def get_availability
    self.is_borrowed ? "borrowed since: " + self.date_borrowed.to_s(:long) : "available"
  end

  def lend_to(friend)
    self.lent_to = friend
    self.date_borrowed = Date.today
  end

  def unborrow
    self.lent_to = nil
    self.date_borrowed = nil
  end

  def is_borrowed
    !self.lent_to.nil?
  end

>>>>>>> ed50c4c524b2a5a0a3b9250bc12c3db73e5a34b0
end
