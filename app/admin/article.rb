ActiveAdmin.register Article do
	menu :parent => "Super Admin Only", :if => proc { current_admin_user.super_admin? }

  permit_params :title, :body, :image, :url

  index do
    column :title
    actions
  end

  form(:html => { :multipart => true }) do |f|
	  f.inputs "Article details" do
	  	f.input :title
	  	f.input :body
	  	f.input :url
	  	f.input :image, :as => :file
	  end
	  f.actions
  end
end
