class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  # authentification
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable #, :registerable

  # authorization
  rolify  

  has_many :task

  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids

  validates :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }

  # def roles=(role_id)
  #   self.add_role(Role.find(role_id).name)
  # end

end
