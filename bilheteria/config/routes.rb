# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :buy_tickets
  resources :payments
  resources :payment_methods
  resources :users
  resources :tickets
  resources :presentations
  resources :presentation_rooms
  resources :ages
  resources :rooms
  resources :events
  resources :event_classes
  resources :event_centers
  resources :addresses
  resources :states
  resources :cities
  root to: 'main#index'
  
end
