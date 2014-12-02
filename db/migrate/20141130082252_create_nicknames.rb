class CreateNicknames < ActiveRecord::Migration
  def change
    create_table :nicknames do |t|
      t.string :game
      t.string :race
      t.string :sex
      t.string :name

      t.timestamps
    end
  end
end
