class AddDotaToStatistic < ActiveRecord::Migration[4.2]
  def change
    add_column :statistics, :dota, :integer
  end
end
