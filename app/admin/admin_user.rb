ActiveAdmin.register AdminUser do
  menu :parent => "Super Admin Only", :if => proc { current_admin_user.super_admin? }
  permit_params :email, :password, :password_confirmation, :bio, :first_name, :last_name, :title, :staff_member, :phone, :on, :admin_user, :image

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :phone
    column :created_at
    column :staff_member
    actions
  end

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :first_name
      f.input :last_name
      f.input :title
      f.input :staff_member
      f.input :phone
      f.input :bio
      f.input :image, :as => :file
    end
    f.actions
  end

#   form(:html => { :multipart => true }) do |f|
#     f.inputs "Staff Member Details" do

#       f.input :email

#     end
#     f.actions
#   end

end



# ActiveAdmin.register StaffMember do
#   menu :parent => "Super Admin Only", :if => proc { current_admin_user.super_admin? }

#   permit_params :bio, :first_name, :last_name, :title, :email, :phone, :on, :staff_member, :image

#   index do
#     column :first_name
#     column :last_name
#     column :title
#     column :email
#     column :phone
#     column :bio
#     actions
#   end

#   form(:html => { :multipart => true }) do |f|
#     f.inputs "Staff Member Details" do
#       f.input :first_name
#       f.input :last_name
#       f.input :title
#       f.input :email
#       f.input :phone
#       f.input :bio
#       f.input :image, :as => :file
#     end
#     f.actions
#   end
# end
