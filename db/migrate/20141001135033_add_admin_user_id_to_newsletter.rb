class AddAdminUserIdToNewsletter < ActiveRecord::Migration
  def change
  	add_column :newsletters, :admin_user_id, :integer
  end
end
