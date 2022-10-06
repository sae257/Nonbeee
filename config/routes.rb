Rails.application.routes.draw do
  
  
  devise_for :admins,controllers: {
  
  
  #後で消す
  registrations: "admin/registrations",
  sessions: "admin/sessions"}
  
  devise_for :customers,controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'}
  
  namespace :admin do

  end


  scope module: :public do

    root to: "homes#top"
    get 'homes/about'
   
   resources :customers, only: [:new, :index, :edit, :show, :create, :update, :destroy]
   resources :taverns, only: [:new, :index, :edit, :show, :create, :update, :destroy]

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
