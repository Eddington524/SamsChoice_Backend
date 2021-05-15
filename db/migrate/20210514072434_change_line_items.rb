class ChangeLineItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :line_items, :unit_price
  end
end
