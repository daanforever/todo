FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "someuser#{n}@email.com"}
    password "SomeStrongPassword"
    password_confirmation { |u| u.password }
  end

  factory :admin, class: User do
    sequence(:email) { |n| "someadmin#{n}@email.com"}
    password "SomeStrongPassword"
    password_confirmation { |u| u.password }
  end
end