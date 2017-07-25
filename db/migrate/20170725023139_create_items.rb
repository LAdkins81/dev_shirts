class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.string :color
      t.string :size
      t.string :style
      t.string :gender
      t.integer :age
      t.string :photo
      t.decimal :price

      t.timestamps null: false
    end
  end
end
