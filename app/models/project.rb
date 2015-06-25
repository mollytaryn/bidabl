class Project < ActiveRecord::Base

  attr_accessor :image
  mount_uploader :image, ImageUploader

  belongs_to :category
  belongs_to :state
  belongs_to :city
  belongs_to :user
  belongs_to :accepted_bid

  has_many :comments
  has_many :images

  validates :title, :description, :category_id, presence: true
  validates :title, length: {minimum: 2, maximum: 100}
  validates :description, length: {minimum: 20}

end