Rails.application.routes.draw do
  
  devise_for :admins, controllers: {
    confirmations: 'admins/confirmations',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations',
    sessions: 'admins/sessions',
    unlocks: 'admins/unlocks',
  }
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  get 'root/index'
  root 'root#index'
  
  get 'about/index'
  
  get 'contact/index'
  
  get 'portfolio/index'
  get 'portfolio/pf01'
  get 'portfolio/pf02'
  get 'portfolio/pf03'
  
  resources :posts

end
