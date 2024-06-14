FactoryBot.define do
  factory :user do
    name { "John Doe" }
    sequence(:email) { |n| "example_#{n}@gmail.com" }
  end
end
