class CreateItemOrders < ActiveRecord::Migration
  def change
    create_table :item_orders do |t|
      t.references :item_id, index: true, foreign_key: true
      t.references :order_id, index: true, foreign_key: true
      t.date :date
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
