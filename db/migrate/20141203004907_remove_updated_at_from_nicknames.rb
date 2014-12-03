class RemoveUpdatedAtFromNicknames < ActiveRecord::Migration
  def change
    remove_column :nicknames, :updated_at
  end
end
