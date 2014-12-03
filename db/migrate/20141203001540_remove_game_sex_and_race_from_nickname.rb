class RemoveGameSexAndRaceFromNickname < ActiveRecord::Migration
  def change
    remove_column :nicknames, :game
    remove_column :nicknames, :sex
    remove_column :nicknames, :race
  end
end
