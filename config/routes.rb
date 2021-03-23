Rails.application.routes.draw do

  root to:  'homes#top'
  get '/about' => 'homes#about'

  devise_for :admins, controllers: {
  sessions: 'admins/sessions'
  }

  namespace :admins do
    resources :customers, only: [:index, :edit, :update, :show]
    resources :items, only: [:index, :show, :new, :create, :edit, :update]
    resources :genres, only: [:index, :create, :edit, :update]
    resources :orders, only: [:index, :show, :update]
    resources :order_items, only: [:update]
  end

  devise_for :customers, skip: :all
  devise_scope :customer do
    get 'customers/sign_in' => 'public/sessions#new', as: 'new_customer_session'
    post 'customers/sign_in' => 'public/sessions#create', as: 'customer_session'
    get 'customers/sign_out' => 'public/sessions#destroy', as: 'destroy_customer_session'
    get 'customers/sign_up' => 'public/registrations#new', as: 'new_customer_registration'
    post 'customers' => 'public/registrations#create', as: 'customer_registration'
    get 'customers/password/new' => 'public/passwords#new', as: 'new_customer_password'
  end

  scope module: :public do
    resources :customers, only: [:show, :edit, :update]
    resources :items, only: [:index, :show]
    resources :cart_items, only: [:index, :create, :update, :destroy]
    resources :orders, only: [:new, :index, :create, :show]
    resources :deliveries, only: [:index, :create, :update, :destroy, :edit]

    # post 'customer/confirm/:id' => 'orders#confirm', as: 'orders_confirm'
    get 'orders/confirm/:id' => 'orders#show', as: 'orders_show'

    # 注文
    post 'orders/confirm' => 'orders#confirm', as: 'orders_confirm'
    get 'orders/:id' => 'orders#show', as: 'orders_show'
    get 'orders/thanks' => 'orders#thanks', as: 'orders_thanks'
    # 会員の退会

    get 'confirm/:id' => 'customers#confirm', as: 'confirm_confirm'
    patch 'withdraw/:id' => 'customers#withdraw', as: 'withdraw_customer'
  end

  delete 'customers/cart_items/destroy_all' => 'public/cart_items#destroy_all'
end
