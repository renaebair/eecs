ActiveAdmin.register Message do
	menu :parent => "Super Admin Only", :if => proc { current_admin_user.super_admin? }
  permit_params :name, :email, :body

  actions :index, :show, :destroy

  index do
    column :name
    column :email
    column :body
    actions
  end
end
