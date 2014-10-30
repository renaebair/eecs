ActiveAdmin.register Handbook do

  menu :parent => "Super Admin Only", :if => proc { current_admin_user.super_admin? }
  permit_params :title, :file, :published
  before_filter :skip_sidebar!
  
  index do
    column :title
    actions
  end

  show do
    attributes_table do
      row :title
    end

    panel "Files" do
      handbook.files.each do |attachment|
        div do
          link_to attachment.file.url, attachment.file.url
        end
      end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Handbook" do
      f.input :title
      f.input :admin_user_id, :as => :hidden, :value => current_admin_user.id
      f.has_many :attachments, :heading => 'Attachments', :allow_destroy => true do |cf|
        cf.input :file, :as => :file
      end
    end
    f.actions
  end

  controller do
    def permitted_params
      params.permit!
    end
  end
end
