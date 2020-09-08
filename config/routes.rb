Rails.application.routes.draw do
  devise_for :models
  resources :homes
  resources :shows
  resources :channels

  post '/favorite' => "shows#favorite"

  post '/searchbychannel' => "shows#searchbychannel"
  post '/searchbyshow' => "shows#searchbyshow"

  root "homes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
