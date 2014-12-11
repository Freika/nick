class ChangeContentStringToText < ActiveRecord::Migration
  def change
    change_column :games, :content, :text
    change_column :races, :content, :text
  end
end
