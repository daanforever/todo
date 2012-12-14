class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :text, :user
  validates :text, :user, :presence => 'true'
  resourcify
end
