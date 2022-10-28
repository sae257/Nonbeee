Rails.application.routes.draw do

 
  namespace :admin do
    get 'reviews/index'
  end
  devise_for :users,controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'}


  devise_for :admin,controllers: {
  #後で消す
  registrations: "admin/registrations",
  sessions: "admin/sessions"}

  devise_for :bars,controllers: {
  registrations: "bar/registrations",
  sessions: 'bar/sessions'}

  namespace :admin do
  root to: "homes#top"
  resources :genres, only: [:new, :index, :edit, :show, :create, :update, :destroy]
  resources :tweets, only: [:new, :index, :edit, :show, :create, :update, :destroy] do
    resources :tweet_comments, only: [:destroy]
    end
  resources :users, only: [:new, :index, :edit, :show, :create, :update, :destroy]
  resources :bars, only: [:new, :index, :edit, :show, :create, :update, :destroy] do
    resources :reviews, only: [:destroy, :index]
    end
  end

  namespace :bar do
  root to: "homes#top"
  get '/bars/unsubscribe' => 'bars#unsubscribe'
  patch '/bars/withdraw' => 'bars#withdraw'
  resources :bars, only: [:new, :index, :edit, :show, :create, :update, :destroy]
  resources :tweets, only: [:new, :index, :edit, :show, :create, :update, :destroy]
  end

  scope module: :user do

    root to: "homes#top"
    get 'homes/about'
    get "/users/show" => "users#show", as: "user"
    patch 'users/update' => "users#update"
    get 'users/confirm' => "users#confirm"
    get '/search', to: 'searches#search'
    get '/users/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'
    patch '/users/withdraw' => 'users#withdraw', as: 'withdraw'

   resources :genres, only: [:index, :show]
   resources :users, only: [:new, :index, :edit, :destroy] do
     member do
     get :favorites
     end
   end
   resources :bars, only: [:new, :index, :edit, :show, :create, :update, :destroy] do
     resources :reviews, only: [:create, :destroy, :index]
    end
   resources :tweets, only: [:new, :index, :edit, :show, :create, :update, :destroy] do
     resource :favorites, only: [:create, :destroy]
     resources :tweet_comments, only: [:create, :destroy]
   end
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
