class Image < ActiveRecord::Base
  belongs_to :projects
  belongs_to :users

  mount_uploader :image, ImageUploader
end
