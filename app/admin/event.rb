ActiveAdmin.register Event do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :title, :description, :date_info, :on, :event

  index do
    column :title
    column :description
    column :date_info
    column :created_at
    actions
  end
  
end
