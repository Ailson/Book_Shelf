FactoryGirl.define do
  factory :user do
    name 'Leonardo'
  end

  factory :friend do
    name 'Ailson'
  end

  factory :book do
    title 'Some book'
    picture 'some_pic_url'
  end
end
