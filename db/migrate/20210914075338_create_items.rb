class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :name,             null: false
      t.text       :explain,          null: false
      t.integer    :category_id,      null: false
      t.integer    :condition_id,     null: false
      t.integer    :pay_by_id,        null: false
      t.integer    :prefecture_id,    null: false
      t.integer    :delivery_time_id, null: false
      t.integer    :price,            null: false
      t.references :user,             null: false, forign_key: true
      t.timestamps
    end
  end
end
