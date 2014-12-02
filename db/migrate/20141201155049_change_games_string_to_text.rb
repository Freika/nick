class ChangeGamesStringToText < ActiveRecord::Migration
  def change
    change_column :gw2s, :game, :text
    change_column :gw2s, :racename, :text
    change_column :gw2s, :pagename, :text
    change_column :gw2s, :title, :text
    change_column :gw2s, :desc, :text
    change_column :gw2s, :customcode, :text
    change_column :gw2s, :slug, :text

    change_column :samps, :game, :text
    change_column :samps, :racename, :text
    change_column :samps, :pagename, :text
    change_column :samps, :title, :text
    change_column :samps, :desc, :text
    change_column :samps, :customcode, :text
    change_column :samps, :slug, :text

    change_column :minecrafts, :game, :text
    change_column :minecrafts, :racename, :text
    change_column :minecrafts, :pagename, :text
    change_column :minecrafts, :title, :text
    change_column :minecrafts, :desc, :text
    change_column :minecrafts, :customcode, :text
  end
end
