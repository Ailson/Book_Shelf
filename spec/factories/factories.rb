FactoryGirl.define do
  factory :user do
    name 'Leonardo'
    after(:create) do |user, evaluator|
      FactoryGirl.create_list(:book, 10, owner: user)
    end
  end

  factory :friend do
    name 'Ailson'
  end

  factory :book do
    title 'Some book'
    picture 'some_pic_url'
  end
end
