class Restaurant < ApplicationRecord
  has_many :reservations
  
  # Given a party size and a time, 
  # return whether the restaurant can accept the reservation
  #def available?(party_size, time)
  #  
  #end
  
  def available?(party_size)
    party_size > 0 && available_capacity >= party_size
  end
  
  private
  
  def available_capacity
    capacity - reservations.sum(:party_size)
  end
  
end
