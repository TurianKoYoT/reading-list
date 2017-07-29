Rails.application.routes.draw do
  resources :books, only: [:index, :show]
  root 'books#index'
  namespace :admin do
    resources :books
    resources :categories
    resources :authors

    root to: "books#index"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
