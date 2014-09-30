ActiveAdmin.register Post do
  scope_to :current_admin_user
  permit_params :title, :body, :image
  before_filter :skip_sidebar!
  
  index do
    column :title
    column :body
    actions
  end

  show do
    attributes_table do
      row :title
      row :body do
        render_markdown post.body
      end
    end
    panel "Images" do
      post.images.each do |attachment|
        span do
          image_tag attachment.file_url(:square_sm)
        end
      end
    end

    panel "Files" do
      post.files.each do |attachment|
        div do
          link_to attachment.file.url, attachment.file.url
        end
      end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs "Post" do
      f.input :title
      f.input :body, :label => "Body (<a href='http://daringfireball.net/projects/markdown/syntax' target='_blank'>Formatting Reference</a>)".html_safe
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

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
