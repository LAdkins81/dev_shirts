class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip_code
      t.references :user_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
