class AddPrincipalFlagToAdminUser < ActiveRecord::Migration
  def change
  	add_column :admin_users, :principal, :boolean, :default => false
  end
end
