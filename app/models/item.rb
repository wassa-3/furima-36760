class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :pay_by
  belongs_to :prefecture
  belongs_to :delivery_time

  with_options presence: true do
    validates :image
    validates :name
    validates :explain
  end
  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :category_id
    validates :condition_id
    validates :pay_by_id
    validates :prefecture_id
    validates :delivery_time_id
  end
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: 'is out of setting range' }
  validates :price, numericality: { only_integer: true, message: 'is invalid. Input half-width characters' }
end
