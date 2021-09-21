class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string     :zip,            null: false
      t.integer    :prefecture_id,  null: false
      t.string     :address_line,   null: false
      t.string     :address_number, null: false
      t.string     :building
      t.string     :phone_number,   null: false
      t.references :order,          null: false, forign_key: true
      t.timestamps
    end
  end
end
