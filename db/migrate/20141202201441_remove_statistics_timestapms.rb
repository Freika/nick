class RemoveStatisticsTimestapms < ActiveRecord::Migration
  def change
    remove_column :statistics, :updated_at
  end
end
