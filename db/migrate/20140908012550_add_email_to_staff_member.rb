class AddEmailToStaffMember < ActiveRecord::Migration
  def change
    add_column :staff_members, :email, :string
    add_column :staff_members, :phone, :string
  end
end
