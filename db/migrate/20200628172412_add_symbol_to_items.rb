class AddSymbolToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :symbol, :string
  end
end
