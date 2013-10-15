class Comment < ActiveRecord::Base
  attr_accessible :comment, :image_id, :raty, :user_id
  belongs_to :user
  belongs_to :photo
end
