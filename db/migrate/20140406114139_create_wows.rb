class CreateWows < ActiveRecord::Migration
  def change
    create_table :wows do |t|
      t.string :game
      t.string :racename
      t.string :pagename
      t.string :title
      t.string :desc
      t.string :customcode

      t.timestamps
    end
  end
end
