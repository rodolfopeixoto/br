FactoryGirl.define do
  factory :property do
     title             {  FFaker::Lorem.sentence }
     accommodates      2
     bathrooms         3
     number_of_rooms   3
     furnished         false
     type_property     2
     single_room       true
     share_room        false
     price             400.00
     description       {  FFaker::Lorem.sentence(1) }
  end
end