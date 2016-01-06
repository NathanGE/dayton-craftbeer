FactoryGirl.define do
  factory :comment do
    message "test message"
    rating "1_star"
  end
end

FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "me#{n}@email.com"
    end
    password "password"
  end
end

FactoryGirl.define do
  factory :place do
    name "test place"
    description "test description"
    address "123 test st, test, test 12345"
    association :user
  end
end