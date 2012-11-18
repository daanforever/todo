class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :text
  validates :text, :presence => 'true'
  resourcify
end
