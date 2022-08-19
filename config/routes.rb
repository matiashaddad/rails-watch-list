Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "lists#index"
  resources :lists, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookmarks, only: [:delete]

end
