class AddShortnameToRace < ActiveRecord::Migration
  def change
    add_column :races, :shortname, :string
  end
end
