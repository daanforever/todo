class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  # authentification
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # authorization
  rolify  

  has_many :task

  attr_accessible :email, :password, :password_confirmation, :remember_me

  validates :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }

end
