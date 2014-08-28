class AddImageToStaffMembers < ActiveRecord::Migration
  def change
    add_column :staff_members, :image, :string
  end
end
