class User < ActiveRecord::Base
  attr_accessible :email, :password
  acts_as_authentic
end
