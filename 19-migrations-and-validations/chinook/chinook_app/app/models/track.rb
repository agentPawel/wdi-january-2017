class Track < ActiveRecord::Base

  validates :name, presence: true
  
  validate  :name_must_be_titleized
  
  validates :milliseconds, presence: true,
                           numericality: { greater_than: 0 }
              
  validates :unit_price, presence: true,
                         numericality: { greater_than_or_equal_to: 0.0 }
  
private
  
  def name_must_be_titleized
    first_char = name[0]
    first_char_is_not_upcased = (first_char != first_char.upcase)
    
    if first_char_is_not_upcased
      errors.add(:name, 'is not a proper title')
    end
  end
  
end
