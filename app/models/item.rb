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
  validates :price, numericality: { in 300..9999999, only_integer: true }
end
