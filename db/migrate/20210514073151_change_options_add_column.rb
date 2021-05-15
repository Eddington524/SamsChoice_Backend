class ChangeOptionsAddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :options,:extra_cost,:decimal
  end
end
