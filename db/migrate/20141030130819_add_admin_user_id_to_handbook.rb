class AddAdminUserIdToHandbook < ActiveRecord::Migration
  def change
  	add_column :handbooks, :admin_user_id, :integer
  end
end
