class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :name
      t.string :content
      t.string :slug
      t.string :description

      t.timestamps
    end
  end
end
