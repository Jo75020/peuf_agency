Rails.application.routes.draw do
  devise_for :users
  resources :infos, only: [:create, :contact, :destroy]


  root to: 'pages#home'

  get "infos",     to: "pages#home"
  post "infos",     to: "pages#home"
  get 'pages/home'
  get "infos", to: "infos#contact"
  post "infos", to: "infos#contact"
  get 'infos/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
