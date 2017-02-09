FactoryGirl.define do
  
  factory :restaurant do
    name     { ['Swiss Chalet', 'Burger Priest', 'Shawarma King'].sample }
    address  { ['22 Yonge St', '44 King St', '92 Queen St'].sample }
    capacity { rand(5..100) }
  end
  
end
