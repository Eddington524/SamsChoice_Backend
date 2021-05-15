class ChangeDescritionColumnsFromItem < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :descrition, :description
  end
end
