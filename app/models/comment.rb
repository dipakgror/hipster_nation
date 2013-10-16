class Comment < ActiveRecord::Base
  attr_accessible :comment, :photo_id, :flag, :user_id
  belongs_to :user
  belongs_to :photo
end
