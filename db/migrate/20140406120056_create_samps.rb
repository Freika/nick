class CreateSamps < ActiveRecord::Migration
  def change
    create_table :samps do |t|
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
