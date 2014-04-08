class AddSlugToWows < ActiveRecord::Migration
  def change
    add_column :wows, :slug, :string
  end
end
