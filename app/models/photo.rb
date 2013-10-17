class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :ratings
  has_many :comments
  attr_accessible :photo, :advice_for
  mount_uploader :photo, ImageUploader
  
  validates_format_of :photo, :with => %r{\.(png|jpg|jpeg)$}i
  
end
