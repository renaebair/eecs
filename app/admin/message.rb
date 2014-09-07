ActiveAdmin.register Message do
  permit_params :name, :email, :body

  actions :index, :show, :destroy

  index do
    column :name
    column :email
    column :body
    actions
  end
end
