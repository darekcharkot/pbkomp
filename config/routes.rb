Rails.application.routes.draw do
  get 'pages/hardwares', to: 'hardwares#index'

  get 'pages/home'

  get 'pages/services'

  get 'pages/pricelist'

  get 'pages/technology'

  get 'pages/contact'

  resources :hardwares
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'signup' }
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
