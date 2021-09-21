class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :zip, :prefecture_id, :address_line, :address_number, :building, :phone_number, :token

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :zip, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Enter it as follows (e.g. 123-4567)"}
    validates :address_line
    validates :address_number
    validates :token
  end
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :phone_number, presence: true
  validates :phone_number, length: { in: 10..11, message: 'is too short' }
  validates :phone_number, format: { with: /\A[0-9]+\z/, message: 'is invalid. Input only number' }

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(zip: zip, prefecture_id: prefecture_id, address_line: address_line, address_number: address_number, building: building, phone_number: phone_number, order_id: order.id)
  end
end