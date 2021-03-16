Rails.application.routes.draw do

  root to:  'homes#top'
  get '/about' => 'homes#about'

  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
  }

  scope module: :admins do
    resources :customers, only: [:index, :edit, :update, :show]
    resources :items, only: [:index, :show, :new, :create, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :orders, only: [:index, :show, :update]
    resources :order_items, only: [:update]
  end

  devise_for :customers, skip: :all
  devise_scope :user do
    get 'users/sign_in' => 'public/sessions#new', as: 'new_user_session'
    post 'users/sign_in' => 'public/sessions#create', as: 'user_session'
    delete 'users/sign_out' => 'public/sessions#destroy', as: 'destroy_user_session'
    get 'users/sign_up' => 'public/registrations#new', as: 'new_user_registration'
    post 'users' => 'public/registrations#create', as: 'user_registration'
    get 'users/password/new' => 'public/passwords#new', as: 'new_user_password'
  end

  scope module: :public do
    resources :customers, only: [:index, :edit, :update]
    resources :items, only: [:index, :show]
    resources :cart_items, only: [:index, :create, :update, :destroy]
    resources :orders, only: [:new, :index, :create, :show]
    resources :deliveries, only: [:index, :create, :update, :destroy, :edit]
  end

end
