FactoryGirl.define do
  factory :comment do
    message "test message"
    rating "1_star"
  end
end

FactoryGirl.define do
  factory :user do
    email "test@test.com"
    password "password"
  end
end