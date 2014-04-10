class AddSlugToSamps < ActiveRecord::Migration
  def change
    add_column :samps, :slug, :string
    add_index :samps, :slug
  end
end
