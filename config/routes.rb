Rails.application.routes.draw do
  resources :images, only: [:destroy]

  get 'pages/hardwares'

  get 'pages/offer'

  get 'pages/home'

  get 'pages/services'

  get 'pages/pricelist'

  get 'pages/technology'

  get 'pages/contact'

  get 'pages/hardware_item/:id', to: 'pages#hardware_item', as: 'hardware_item'

  resources :hardwares
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'signup' }
  root "pages#offer"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
