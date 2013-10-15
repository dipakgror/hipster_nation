class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  attr_accessible :photo
  mount_uploader :photo, ImageUploader
  
  validates_format_of :photo, :with => %r{\.(png|jpg|jpeg)$}i
  
end
