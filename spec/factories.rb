FactoryGirl.define do
  factory :category do
    name "Pets"
  end
  factory :city do
    name "Rozaje"
  end
  factory :user do
    email "abc@live.com"
    password "123456"
    password_confirmation "123456"
  end
  factory :expense do
    title "Krofna"
    value "1"
    description "sa kremom"
    association :category
    association :user
    association :city
  end
end