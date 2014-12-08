class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    u = User.last
    u.admin = true
    u.save
  end
end
