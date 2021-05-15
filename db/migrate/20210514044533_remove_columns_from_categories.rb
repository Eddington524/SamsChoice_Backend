class RemoveColumnsFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories,:body
    remove_column :categories,:position
    remove_column :categories,:image
    remove_column :categories,:created_at
    remove_column :categories,:updated_at
  end
end
