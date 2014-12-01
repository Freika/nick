class ChangeWowStringToText < ActiveRecord::Migration
  def change
    change_column :wows, :game, :text
    change_column :wows, :racename, :text
    change_column :wows, :pagename, :text
    change_column :wows, :title, :text
    change_column :wows, :desc, :text
    change_column :wows, :customcode, :text
    change_column :wows, :slug, :text
  end
end
