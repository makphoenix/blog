FactoryBot.define do
  factory :user do
    # name { "MyString" }
    # email { "MyString" }
    sequence(:name)  { |n| "First#{n} Last#{n}" }
    sequence(:email) { |n| "user#{n}@example.com" }
  end
end
