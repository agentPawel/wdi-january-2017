FactoryGirl.define do
  factory :reservation do
    party_size { rand(1..200) }
    time       { Time.now }
  end
end
