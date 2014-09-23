ActiveAdmin.register ParentQuote do
	menu :parent => "Super Admin Only", :if => proc { current_admin_user.super_admin? }
  permit_params :parent_name, :body
  before_filter :skip_sidebar!
  
  index do
    column :parent_name
    column :body
    actions
  end
end
