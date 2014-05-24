class AddSeoDescriptionToGw2 < ActiveRecord::Migration
  def change
    add_column :gw2s, :seo_description, :string
  end
end
