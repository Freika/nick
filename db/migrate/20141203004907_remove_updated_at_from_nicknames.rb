class RemoveUpdatedAtFromNicknames < ActiveRecord::Migration[4.2]
  def change
    remove_column :nicknames, :updated_at
  end
end
