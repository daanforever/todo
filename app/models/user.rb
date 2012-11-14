class User < ActiveRecord::Base
  
  acts_as_authentic do |c|
    crypto_provider = Authlogic::CryptoProviders::BCrypt
  end
  
  #has_secure_password

  has_and_belongs_to_many :role

  attr_accessible :email, :password, :password_confirmation
  validates_presence_of :password, :email, :on => :create
end
