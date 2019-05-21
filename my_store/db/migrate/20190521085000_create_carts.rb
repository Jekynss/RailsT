class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :item_id
      t.text :name
      t.integer :price

      t.timestamps
    end
  end
end
