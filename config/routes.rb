Rails.application.routes.draw do
  namespace :dashboard do
    get 'images/index'
  end

  namespace :dashboard do
    get 'images/show'
  end

  namespace :dashboard do
    get '/' => "base#index"
    get 'base/index'
    get 'setting' => "setting#index"
    resources :users do
      member do
        patch :toggle_visible
      end
    end

    resources :applications do
      member do
      %w(restart start scale suspend).each do |action|
        put action
      end
      end

    end
    resources :nodes do
      resources :containers do
        member do
          %w(start stop restart pause unpause kill).each do |action|
            put action
          end
        end
      end
      resources :images
    end
  end

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create] do
      post :login, on: :collection
      delete :sign_out, on: :collection
    end
  end

  resource :session, controller: :session
  resource :registration, only: [:new, :create], controller: :registration


  root 'dashboard/base#index'

end
