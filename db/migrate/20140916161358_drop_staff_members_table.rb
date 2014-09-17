class DropStaffMembersTable < ActiveRecord::Migration
  def up
    drop_table :staff_members
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
