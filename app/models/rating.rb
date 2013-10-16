class Rating < ActiveRecord::Base
  belongs_to :photo
  attr_accessible :photo_id, :rate, :user_id
end
