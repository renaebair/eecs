ActiveAdmin.register StaffMember do

  permit_params :bio, :first_name, :last_name, :title, :on, :staff_member

  index do
    column :first_name
    column :last_name
    column :title
    column :bio
    actions
  end
end
