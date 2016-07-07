Rails.application.routes.draw do
  root to: 'static_pages#root'


  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create, :show]
    resources :venues, only: [:index, :show, :create]
    resources :subscriptions, only: [:create, :destroy]
    resources :occasions, only: [:create]
  end

end
