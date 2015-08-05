Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".





 get("/movie", { :controller => "movies", :action => "index" })

 get("/movie/new", { :controller => "movies", :action => "new_form" })

  get("/movie/:id",
        { :controller => "movies", :action => "show" })

  get("/movie/create_movie",       { :controller => "movies", :action => "create_movie" })

get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

get("/movie/:id/edit", { :controller => "movies", :action => "edit_form" })

get("/movie/:id", { :controller => "movies", :action => "show" })

get("/movie/:id", { :controller => "movies", :action => "update_row" })








 get("/director", { :controller => "directors", :action => "index" })

 get("/director/new", { :controller => "directors", :action => "new_form" })

  get("/director/:id",
        { :controller => "directors", :action => "show" })

  get("/director/create_director",       { :controller => "directors", :action => "create_director" })

get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

get("/director/:id/edit", { :controller => "directors", :action => "edit_form" })

get("/director/:id", { :controller => "directors", :action => "show" })

get("/director/:id", { :controller => "directors", :action => "update_row" })




 get("/actor", { :controller => "actors", :action => "index" })

 get("/actor/new", { :controller => "actors", :action => "new_form" })

  get("/actor/:id",
        { :controller => "actors", :action => "show" })

  get("/actor/create_actor",       { :controller => "actors", :action => "create_actor" })

get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })

get("/actor/:id/edit", { :controller => "actors", :action => "edit_form" })

get("/actor/:id", { :controller => "actors", :action => "show" })

get("/actor/:id", { :controller => "actors", :action => "update_row" })



  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
