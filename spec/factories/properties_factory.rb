FactoryGirl.define do
  factory :property do
     title             {  FFaker::Lorem.sentence }
     archetype
     accommodates      2
     bathrooms         3
     number_of_rooms   3
     furnished         false
     single_room       true
     share_room        false
     price             400.00
     description       {  FFaker::Lorem.sentence(1) }
  end

  factory :property_invalid do
     title             nil
     archetype
     accommodates      nil
     bathrooms         nil
     number_of_rooms   nil
     furnished         nil
     single_room       nil
     share_room        nil
     price             nil
     description       nil
  end
end