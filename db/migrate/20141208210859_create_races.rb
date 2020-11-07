class CreateRaces < ActiveRecord::Migration[4.2]
  def up
    create_table :races do |t|
      t.string :title
      t.string :name
      t.text :content
      t.string :slug
      t.text :description
      t.integer :game_id

      t.timestamps
    end
    Race.create_translation_table! title: :string, name: :string, content: :text
  end

  def down
    drop_table :races
    Race.drop_translation_table!
  end
end
