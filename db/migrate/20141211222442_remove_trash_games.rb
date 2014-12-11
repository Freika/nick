class RemoveTrashGames < ActiveRecord::Migration
  def change
    drop_table :wows
    drop_table :gw2s
    drop_table :samps
    drop_table :minecrafts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
