Rails.application.routes.draw do
  get 'mylessons/create'
  get 'mylessons/destroy'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
    get 'confirm_email', to: 'users/registrations#confirm_email'
  end

  get 'comments/create'
  get 'comments/destroy'
  get "mylesson" => "lessons#mylesson"
  root 'lessons#index'
  #resources :lessons
  resources :comments, only: [:create,:destroy]
  resources :lessons do
    resource :mylessons, only: %i[create destroy]
  end
end
