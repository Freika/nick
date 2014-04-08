class CreateSyllables < ActiveRecord::Migration
  def change
    create_table :syllables do |t|
      t.string :game
      t.string :race
      t.string :sex
      t.string :position
      t.string :syllable
      t.string :namepart

      t.timestamps
    end
  end
end
