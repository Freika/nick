class AddDotaToStatistic < ActiveRecord::Migration
  def change
    add_column :statistics, :dota, :integer
  end
end
