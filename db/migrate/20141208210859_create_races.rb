class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :title
      t.string :name
      t.string :content
      t.string :slug
      t.string :description
      t.integer :game_id

      t.timestamps
    end
  end
end
