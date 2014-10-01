ActiveAdmin.register Newsletter do
  # scope_to :current_admin_user
  menu :parent => "Super Admin Only", :if => proc { current_admin_user.super_admin? }
  permit_params :title, :image, :published
  before_filter :skip_sidebar!
  
  index do
    column :title
    actions
  end

  show do
    attributes_table do
      row :title
    end
    panel "Images" do
      newsletter.images.each do |attachment|
        span do
          image_tag attachment.file_url(:square_sm)
        end
      end
    end

    panel "Files" do
      newsletter.files.each do |attachment|
        div do
          link_to attachment.file.url, attachment.file.url
        end
      end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Newsletter" do
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
