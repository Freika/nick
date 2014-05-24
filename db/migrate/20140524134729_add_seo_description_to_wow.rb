class AddSeoDescriptionToWow < ActiveRecord::Migration
  def change
    add_column :wows, :seo_description, :string
  end
end
