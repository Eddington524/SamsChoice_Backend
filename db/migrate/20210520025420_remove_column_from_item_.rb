class RemoveColumnFromItem < ActiveRecord::Migration[6.0]
  def change
    remove_column :items,:image_path
  end
end
