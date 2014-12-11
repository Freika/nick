class ChangeDescriptionStringToText < ActiveRecord::Migration
  def change
    change_column :games, :description, :text
    change_column :races, :description, :text
  end
end
