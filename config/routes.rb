Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :categories, param: :slug, only: [:index, :show]

  namespace :japanese do
    resources :japanese_users, only: %i[index new create]
  end

  namespace :american do
    resources :american_users, only: %i[index new create]
  end
end
