Eecs::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

  get 'about' => 'pages#about'
  get 'about/leadership' => 'pages#leadership'
  get 'about/staff' => 'pages#staff'
  get 'about/news' => 'pages#news'
  get 'about/hours' => 'pages#hours'
  get 'about/life' => 'pages#life'
  get 'about/volunteers' => 'pages#volunteers'
  get 'about/announcements' => 'pages#announcements'
  get 'about/sustainability' => 'pages#sustainability'
  get 'about/academics' => 'pages#academics'
  get 'contact' => 'pages#contact'

  resources :messages, :only => :create
  resources :posts

  resources :staff_members, controller: 'admin_users' do
    resources :posts
  end
  # resources :admin_users, :as => :staff_members do
  #   resources :posts
  # end

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
