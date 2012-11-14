class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  acts_as_authentic
  has_secure_password
  validates_presence_of :password, :email, :on => :create
end
