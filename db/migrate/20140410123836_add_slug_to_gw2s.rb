class AddSlugToGw2s < ActiveRecord::Migration
  def change
    add_column :gw2s, :slug, :string
    add_index :gw2s, :slug
  end
end
