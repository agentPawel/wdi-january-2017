class Artist < ActiveRecord::Base
  validate :name, presence: true
end
