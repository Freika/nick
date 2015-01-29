class RemoveTimestampsFromSyllables < ActiveRecord::Migration
  def change
    remove_column :syllables, :created_at
    remove_column :syllables, :updated_at
  end
end
