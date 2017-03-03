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
     rule
     comfort
  end

  trait :invalid do
    title { nil }
  end

  trait :invalid do
    title { nil }
  end
end
