class Project < ActiveRecord::Base

  belongs_to :category
  belongs_to :state
  belongs_to :city
  belongs_to :user


  validates :title, :description, :category_id, presence: true
  validates :title, length: {minimum: 2, maximum: 100}
  validates :description, length: {minimum: 20}
end
