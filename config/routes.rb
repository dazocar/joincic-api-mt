JoincicApiMt::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # Example resource route within a namespace:
  namespace :admin do
    # Directs /admin/RESOURCE/* to Admin::ProductsController
    # (app/controllers/admin/<RESOURCE>s_controller.rb)

    resources :peoples, only: [:create, :index, :destroy]
    resources :schools, only: [:create, :index, :destroy]
    resources :countries, only: [:create, :index, :destroy]

  end

  # Example resource route within a namespace:
  namespace(:auxiliar, defaults: {format: :json}) do

    resources :joincics, only: [] do
      get 'show_schools', on: :collection
      get 'get_school', on: :member
    end

  end
end
