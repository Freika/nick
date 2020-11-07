class RemoveGameRaceSexAndNameFromStatistics < ActiveRecord::Migration[4.2]
  def change
    remove_column :statistics, :game
    remove_column :statistics, :race
    remove_column :statistics, :sex
    remove_column :statistics, :name
  end
end
