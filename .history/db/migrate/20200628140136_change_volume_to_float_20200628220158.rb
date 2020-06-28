class ChangeVolumeToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :volume, :float
  end
end
