ActiveAdmin.register Testamonial do
  permit_params :name, :body

  index do
    column :name
    column :body
    actions
  end
end
