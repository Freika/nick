class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.string :game
      t.string :race
      t.string :sex
      t.string :name

      t.timestamps
    end
  end
end
