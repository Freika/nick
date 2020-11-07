class RemoveGameSexAndRaceFromNickname < ActiveRecord::Migration[4.2]
  def change
    remove_column :nicknames, :game
    remove_column :nicknames, :sex
    remove_column :nicknames, :race
  end
end
