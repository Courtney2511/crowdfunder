Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'projects#index'

  resources :projects do
    resources :rewards
    resources :pledges

  end

  resources :users
  resources :sessions

end
