Rails.application.routes.draw do
resources :sessions, only: [:new, :create, :destroy]

resources :supports

resources :inquiries, only:  [:new, :create]

#resources :supports do
  #resources :inquiries
#
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
