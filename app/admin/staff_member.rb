ActiveAdmin.register StaffMember do

  permit_params :bio, :first_name, :last_name, :title, :on, :staff_member, :image

  index do
    column :first_name
    column :last_name
    column :title
    column :bio
    actions
  end

  form(:html => { :multipart => true }) do |f|
	  f.inputs "Staff Member Details" do
	  	f.input :first_name
	  	f.input :last_name
	  	f.input :title
	  	f.input :bio
	  	f.input :image, :as => :file
	  end
	  f.actions
  end
end
