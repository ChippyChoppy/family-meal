Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :diners, except: [:index]
resources :homecooks, only: [:index, :show]
resources :reservations, except: [:index, :show]
resources :dishes, except: [:edit, :update, :delete]
resources :menus, only: [:show]
end
