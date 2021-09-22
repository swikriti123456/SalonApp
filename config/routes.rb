Rails.application.routes.draw do
 
  resources :addresses
  resources :user_services
  devise_for :users

 resources :user_services
 resources :user_salons, only: [:create, :destroy]
   resources :users, only: [:show]
  resources :salons, only: [:new ,:create ,:edit , :update, :destroy]
    resources :services, only: [:new ,:create ,:edit , :update, :destroy]

   root 'welcome#index'
    get 'my_salon', to: 'users#my_salon'
    get 'my_service', to: 'users#my_service'
    get 'my_appointment', to: 'users#my_appointment'
end
