class AddColumnFromItem < ActiveRecord::Migration[6.0]
  def change
    add_column :items,:image_path,:string
  end
end
