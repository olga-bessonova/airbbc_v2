Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # post 'api/test', to: 'application#test'
  namespace :api, defaults: { format: :json } do
      get 'listings/search', to: "listings#search"
    resources :users, only: [:create, :show]
    resource :session, only: [:show, :create, :destroy]
    resources :listings, only: [:create, :show, :destroy, :edit, :index]
    resources :reviews, only: [:show, :create, :destroy, :update]
  end



  get '*path', to: "static_pages#frontend_index"
end
