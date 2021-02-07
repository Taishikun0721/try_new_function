Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'categories#index'

  resources :categories, param: :slug, only: [:index, :show]

  namespace :japanese do
    resources :japanese_users, only: %i[index new create]
  end

  namespace :american do
    resources :american_users, only: %i[index new create]
  end
end
