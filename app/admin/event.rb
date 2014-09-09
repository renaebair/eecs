ActiveAdmin.register Event do
  permit_params :title, :description, :date_info, :on, :event, :published, :image, :url

  index do
    column :title
    column :description
    column :date_info
    column :url
    column :image, :as => :file
    column :created_at
    column :published
    actions
  end
end
