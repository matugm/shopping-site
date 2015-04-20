FactoryGirl.define do
  factory :comment do
    content "A" * 50

    trait :invalid do
      content "A" * 5
    end
  end
end
