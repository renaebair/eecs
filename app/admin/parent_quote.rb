ActiveAdmin.register ParentQuote do
  permit_params :parent_name, :body

  index do
    column :parent_name
    column :body
    actions
  end
end
