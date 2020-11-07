class AddShortnameToRace < ActiveRecord::Migration[4.2]
  def change
    add_column :races, :shortname, :string
  end
end
