# Model Task 
class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :color
  attr_accessible :text, :user, :color_id
  validates :text, :user, :presence => 'true'
  resourcify
end
