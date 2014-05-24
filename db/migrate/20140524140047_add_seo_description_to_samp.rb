class AddSeoDescriptionToSamp < ActiveRecord::Migration
  def change
    add_column :samps, :seo_description, :string
  end
end
