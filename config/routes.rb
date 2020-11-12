Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :diners, except: [:index]
resources :homecooks, only: [:index, :show]
resources :reservations, except: [:index]
resources :dishes, except: [:edit, :update, :delete]
resources :menus, only: [:show]

delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
get '/sessions/new', to: 'sessions#new', as: 'new_login'
post '/sessions', to: 'sessions#create', as: 'login'
end
