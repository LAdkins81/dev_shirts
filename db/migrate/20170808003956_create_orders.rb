class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user_id, index: true, foreign_key: true
      t.date :date
      t.decimal :cost
      t.references :address_id

      t.timestamps null: false
    end
  end
end
