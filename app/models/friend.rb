class Friend < ActiveRecord::Base
  attr_accessible :email, :facebook_id, :name, :user_id
  belongs_to :user
  has_many :books
end
