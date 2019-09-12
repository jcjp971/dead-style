Rails.application.routes.draw do
  resources :products do
    resources :sales, only: %i[create show]
  end
  resources :sales, only: %i[index]
  devise_for :users
  root to: 'pages#home'
  get '/mystyle', to: 'products#mystyle'
  get '/mybusiness', to: 'sales#mybusiness'
  get '/merci', to: 'pages#merci'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
