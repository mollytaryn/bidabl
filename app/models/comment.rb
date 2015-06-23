class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :project


  validates :content, presence: true
  validates :content, length: {minimum: 2, maximum: 500}

end