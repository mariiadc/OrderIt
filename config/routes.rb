Rails.application.routes.draw do
  devise_for :eateries
  devise_for :clients
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'index', to: 'pages#index', as: :index
  # get 'profile', to: 'pages#profile', as: :profile

namespace :client do
  resources :menus, only: [:index, :show] do
    get 'qrcodereader_reader', to: 'menus#qrcode_reader', as: "qrcode_reader"
  end
  resources :orders do
    resources :reviews
  end
  resources :tables, only: [:index, :show]
  resources :events, only: [:index, :show]
end

end
