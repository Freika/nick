class RemoveStatisticsTimestapms < ActiveRecord::Migration[4.2]
  def change
    remove_column :statistics, :updated_at
  end
end
