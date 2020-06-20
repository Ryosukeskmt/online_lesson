Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
    get 'confirm_email', to: 'users/registrations#confirm_email'
  end

  get "mylesson" => "lessons#mylesson"
  root 'lessons#index'

  resources :comments, only: [:create,:destroy]
  resources :lessons do
    resource :mylessons, only: %i[create destroy]
    get :search, on: :collection
  end
end
