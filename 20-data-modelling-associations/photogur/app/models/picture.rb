class Picture < ActiveRecord::Base
  has_many :comments #comments table has a picture_id column
  # @picture.comments
  # @picture.comments <<
  # @picture.comments.where(...)
  # @picture.comments.count
  # etc
end
