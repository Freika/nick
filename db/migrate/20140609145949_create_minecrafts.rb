class CreateMinecrafts < ActiveRecord::Migration
  def change
    create_table :minecrafts do |t|
      t.string :game
      t.string :racename
      t.string :pagename
      t.string :title
      t.string :desc
      t.string :customcode
      t.string :seo_description

      t.timestamps
    end
  end
end
