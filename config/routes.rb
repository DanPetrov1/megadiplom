Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
    post '/' => :show, :on => :member
    collection do
      post 'add/:id', to: 'books#add_to_basket'
      post 'delete/:id', to: 'books#delete_from_basket'
    end
  end

  root to: 'books#index'

  # resources :books, only: [:show]

  post 'quote', to: 'books#quote'
  post 'order', to: 'books#order'
  get 'done', to: 'books#done'
end
