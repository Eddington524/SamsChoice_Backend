class AddColumnImageFromItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :image, :string, array:true, :default => []
  end
end
