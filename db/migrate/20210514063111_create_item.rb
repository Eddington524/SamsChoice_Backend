class CreateItem < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :sale_price
      t.integer :category_id 
      t.text :descrition 
      t.datetime :created_at
      t.datetime :updated_at
      t.decimal :price
    end
  end
end
