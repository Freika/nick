class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.string :title
      t.string :name
      t.text :content
      t.string :slug
      t.text :description

      t.timestamps
    end
    Game.create_translation_table! title: :string, name: :string, content: :text
  end

  def down
    drop_table :games
    Game.drop_translation_table!
  end
end
