class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.references :item, null: false, foreign_key: true
      t.string :name
      t.integer :stock
      t.timestamps
    end
  end
end
