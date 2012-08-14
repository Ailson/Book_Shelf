class User < ActiveRecord::Base
  attr_accessible :name, :tel
  has_many :Books
end
