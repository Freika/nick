class AddGameIdAndRaceIdToSyllable < ActiveRecord::Migration[5.0]
  def change
    add_column :syllables, :game_id, :integer, null: false, default: 0
    add_column :syllables, :race_id, :integer, null: false, default: 0

    add_index :syllables, :game_id
    add_index :syllables, :race_id
  end
end
