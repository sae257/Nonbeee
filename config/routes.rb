Rails.application.routes.draw do

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

  end

  namespace :bar do
  resources :bars, only: [:new, :index, :edit, :show, :create, :update, :destroy]
  end

  scope module: :user do

    root to: "homes#top"
    get 'homes/about'
    get "/users/show" => "users#show", as: "user"
    patch 'users/update' => "users#update"
    get 'users/confirm' => "users#confirm"

   resources :users, only: [:new, :index, :edit, :destroy]
   resources :bars, only: [:new, :index, :edit, :show, :create, :update, :destroy]
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
