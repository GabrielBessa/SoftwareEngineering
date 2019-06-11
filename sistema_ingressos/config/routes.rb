Rails.application.routes.draw do
  get 'main/index'
  devise_for :users
  resources :buy_tickets
  resources :tickets
  resources :payments
  resources :payment_methods
  resources :ticket_types
  resources :events
  resources :presentations
  resources :presentation_rooms
  resources :age_groups
  resources :rooms
  resources :event_classes
  resources :event_centers
  resources :addresses
  resources :cities

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'main#index'

  # Rails.application.routes.draw do
  get 'main/index'
  #     devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }
  # end

end
