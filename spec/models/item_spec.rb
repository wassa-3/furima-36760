require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品' do
    context '商品出品できる場合' do
      it 'image、name、explain、priceが存在し、category_id、condition_id、pay_by_id、prefecture_id、delivery_time_idが1以外の時登録できる' do
        expect(@item).to be_valid
      end
      it 'priceが300以上であれば登録できる' do
        @item.price = 300
        expect(@item).to be_valid
      end
      it 'priceが9999999以下であれば登録できる' do
        @item.price = 9_999_999
        expect(@item).to be_valid
      end
    end
    context '商品出品できない場合' do
      it 'imageが空では登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it 'nameが空では登録できない' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'explainが空では登録できない' do
        @item.explain = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Explain can't be blank")
      end
      it 'priceが空では登録できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is invalid. Input half-width characters')
      end
      it 'category_idが1では登録できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Category can't be blank")
      end
      it 'condition_idが1では登録できない' do
        @item.condition_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Condition can't be blank")
      end
      it 'pay_by_idが1では登録できない' do
        @item.pay_by_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Pay by can't be blank")
      end
      it 'prefecture_idが1では登録できない' do
        @item.prefecture_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end
      it 'delivery_time_idが1では登録できない' do
        @item.delivery_time_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Delivery time can't be blank")
      end
      it 'priceが299以下では登録できない' do
        @item.price = 299
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is out of setting range')
      end
      it 'priceが10000000以上では登録できない' do
        @item.price = 10_000_000
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is out of setting range')
      end
      it 'priceが全角では登録できない' do
        @item.price = '３００'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price is invalid. Input half-width characters')
      end
    end
  end
end
