##
# This model represents User in project
# == Authentication:
# Using <tt>'gem devise'</tt> for authenticate user
# == Authorization:
# Using <tt>'gem rolify'</tt> for set up role for user

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable, :registerable

  # Rolify User class
  rolify  

  # Class Associations
  has_many :task

  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids

  # Validates block
  validates :email, :presence => true
  validates :email, :uniqueness => { :case_sensitive => false }

  # def roles=(role_id)
  #   self.add_role(Role.find(role_id).name)
  # end

end
