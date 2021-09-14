require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できる場合' do
      it 'nickname、email、password、password_confirmation、last_name、first_name、last_name_kana、first_name_kana、date_of_birthが存在すれば登録できる' do
        
      end
      it 'passwordとpassword_confirmationが6文字以上、半角英数混合であれば登録できる' do
        
      end
    end
    context '新規登録できない場合' do
      it 'nicknameが空では登録できない' do

      end
      it 'emailが空では登録できない' do

      end
      it 'passwordが空では登録できない' do

      end
      it 'last_nameが空では登録できない' do

      end
      it 'first_nameが空では登録できない' do

      end
      it 'last_name_kanaが空では登録できない' do

      end
      it 'first_name_kanaが空では登録できない' do

      end
      it 'date_of_birthが空では登録できない' do

      end
      it '重複したemailが存在する場合は登録できない' do

      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do

      end
      it 'passwordが5文字以下では登録できない' do

      end
      it 'passwordが6文字以上、半角でも英数混合でなければ登録できない' do

      end
      it 'passwordが6文字以上、英数混合でも半角でなければ登録できない' do

      end
      it 'last_nameが全角でも漢字、カタカナ、ひらがなでなければ登録できない' do

      end
      it 'last_nameが漢字、カタカナ、ひらがなでも半角では登録できない' do

      end
      it 'first_nameが全角でも漢字、カタカナ、ひらがなでなければ登録できない' do

      end
      it 'first_nameが漢字、カタカナ、ひらがなでも半角では登録できない' do

      end
      it 'last_name_kanaが全角でもカタカナでなければ登録できない' do
      end
      it 'last_name_kanaがカタカナでも全角でなければ登録できない' do

      end
      it 'first_name_kanaが全角でもカタカナでなければ登録できない' do
      end
      it 'first_name_kanaがカタカナでも全角でなければ登録できない' do

      end
    end
  end
end