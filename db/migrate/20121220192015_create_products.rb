class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :qty
      t.decimal :price
      t.boolean :on_sale
      t.decimal :sale_price
      t.integer :category_id
            
      t.timestamps
    end
  end
end
