class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :item, null: false, forign_key: true
      t.references :user, null: false, forign_key: true
      t.timestamps
    end
  end
end
