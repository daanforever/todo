FactoryGirl.define do
  factory :user do
    email "someuser@email.address"
    password "SomeStrongPassword"
    password_confirmation 'SomeStrongPassword'
  end

  factory :admin, class: User do
    email "someadmin@email.address"
    password "SomeStrongPassword"
    password_confirmation 'SomeStrongPassword'
  end
end