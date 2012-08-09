class Milestone < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :earliest, :latest, :title
  validates_presence_of :earliest, :latest, :title
end
