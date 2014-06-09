class ChangeDescColumnToText < ActiveRecord::Migration
  def change
    change_column :minecrafts, :desc, :text
  end
end
