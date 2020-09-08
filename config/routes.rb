Rails.application.routes.draw do
  resources :homes
  resources :shows
  resources :channels

  post '/favorite' => "shows#favorite"

  root "homes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
