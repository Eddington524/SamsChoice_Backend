Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  begin
    ActiveAdmin.routes(self)
  rescue StandardError
    ActiveAdmin::DatabaseHitDuringLoad
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :users do
    post "token" => "users/refresh#create"
  end

  devise_for :users,
            path: "",
            path_names: {
              sign_in: "login",
              sign_out: "logout",
              registration: "signup"
            },
            controllers: {
              sessions: "users/sessions",
              registrations: "users/registrations"
            }
  resource :users
  
  resources :orders, except: [:update, :destroy] do
    resources :line_items, only: :index
  end

  resources :categories
  get'/items/category/:id' => 'items#category_item'
  
  resources :posts

  resources :items

  resources :line_items, except: [:show]
  # 추가 특정 경로 설정 시 (orders의 line_item을 조회)
  resources :orders, except: [:update, :destroy] do
    resources :line_items, only: :index
  end

  put '/orders' => 'orders#update'
  delete '/orders' => 'orders#destroy'

  resources :images do
    post :dropzone, on: :collection
  end
end
