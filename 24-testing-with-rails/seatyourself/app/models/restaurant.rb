class Restaurant < ApplicationRecord
  has_many :reservations
  
  # Given a party size and a time, 
  # return whether the restaurant can accept the reservation
  #def available?(party_size, time)
  #  
  #end
  
  def available?(party_size)
    party_size > 0 && capacity >= party_size
  end
  
end
