FactoryGirl.define do
  factory :user do
    email { FFaker::Internet.email }
    password "b0l4d3F0g0"
  end
end