FactoryBot.define do
  factory :order_address do
    zip { '123-4567' }
    prefecture_id { 2 }
    address_line { '八王子市' }
    address_number { '八王子1-1-1' }
    building { '八王子荘' }
    phone_number { '08012345678' }
    token { "tok_abcdefghijk00000000000000000" }
  end
end
