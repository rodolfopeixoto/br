FactoryGirl.define do
  factory :archetype do
    sequence(:name) { |n| "Archetype #{n}" }
  end
end
