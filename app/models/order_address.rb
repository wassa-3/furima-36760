class OrderAddress
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :zip, :prefecture_id, :address_line, :address_number, :building, :phone_number

  with_options presence: true do
    validates :user_id
    validates :item_id
    validates :zip, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :address_line
    validates :address_number
    validates :phone_number: {only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 11, message: 'is invalid'}
  end
  validates :prefecture_id, numericality: {other_than: 0, message: "can't be blank"}

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(zip: zip, prefecture_id: prefecture_id, address_line: address_line, address_number: address_number, building: building, phone_number: phone_number, order_id: order.id)
end