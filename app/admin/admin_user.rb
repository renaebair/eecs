ActiveAdmin.register AdminUser do
  config.sort_order = "last_name_asc"
  menu :parent => "Super Admin Only", :if => proc { current_admin_user.super_admin? }
  permit_params :email, :password, :password_confirmation, :bio, :first_name, :last_name, :title, :staff_member, :principal, :phone, :on, :admin_user, :image

  before_filter :skip_sidebar!

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
      f.input :principal
      f.input :phone
      f.input :bio
      f.input :image, :as => :file
    end
    f.actions
  end

  controller do
    def update_resource(object, attributes)
      update_method = attributes.first[:password].present? ? :update_attributes : :update_without_password
      object.send(update_method, *attributes)
    end
  end
end