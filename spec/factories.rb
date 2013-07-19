FactoryGirl.define do
  factory :user do
    name "Shaun Martin"
    email "smartin@meiresearch.org"
    password "password"
    password_confirmation "password"
  end
end