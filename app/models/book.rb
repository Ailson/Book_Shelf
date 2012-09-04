class Book < ActiveRecord::Base
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

end
