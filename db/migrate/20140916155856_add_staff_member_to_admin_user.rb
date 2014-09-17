class AddStaffMemberToAdminUser < ActiveRecord::Migration
  def change
  	add_column :admin_users, :first_name, :string
  	add_column :admin_users, :last_name, :string
  	add_column :admin_users, :title, :string
  	add_column :admin_users, :bio, :text
  	add_column :admin_users, :avatar, :string
  	add_column :admin_users, :image, :string
  	add_column :admin_users, :phone, :string
  	add_column :admin_users, :staff_member, :boolean, :default => true
  end
end
