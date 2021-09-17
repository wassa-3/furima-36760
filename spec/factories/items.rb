FactoryBot.define do
  factory :item do
    name             { 'test' }
    explain          { 'testtest' }
    category_id      { 2 }
    condition_id     { 2 }
    pay_by_id        { 2 }
    prefecture_id    { 2 }
    delivery_time_id { 2 }
    price            { 1111 }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
