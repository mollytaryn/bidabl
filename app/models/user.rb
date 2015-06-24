class User < ActiveRecord::Base
  authenticates_with_sorcery!

  attr_accessor :image
  mount_uploader :image, ImageUploader

  has_many :projects
  has_many :comments
  has_many :images

  validates :email, :username, presence: true
  validates :name, length: { minimum: 2, allow_blank: true }
  validates :username, length: {minimum: 2}
  validates :email, format: { with: /.+@.+\..+/, message: "must be an email address" }, uniqueness: true
  validates :password, confirmation: true
  validates :password, :password_confirmation, presence: { on: :create }

end
