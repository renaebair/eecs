class ChangeAdminUserImageToAttachment < ActiveRecord::Migration
  def change
  	rename_column :admin_users, :image, :attachment
  end
end
