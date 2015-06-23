class State < ActiveRecord::Base

  has_many :projects
  has_many :cities

end
