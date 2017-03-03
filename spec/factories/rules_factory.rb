FactoryGirl.define do
  factory :rule do
    description {  FFaker::Lorem.sentence(1) }
  end
end