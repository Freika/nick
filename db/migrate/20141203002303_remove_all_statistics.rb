class RemoveAllStatistics < ActiveRecord::Migration
  def change
    Statistic.delete_all
  end

  def down
    irreversible migration
  end
end
