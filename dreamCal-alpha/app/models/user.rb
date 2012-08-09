class User < ActiveRecord::Base
  has_many :milestones
  attr_accessible :goal_description, :goal_title, :name
  validates_presence_of :goal_title, :name
end
