Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get 'confirm_email', to: 'users/registrations#confirm_email'
  end

  resources :users, only: [:show]

  get "mylesson" => "lessons#mylesson"
  root 'lessons#index'

  resources :comments, only: [:create,:destroy]

  resources :lessons do
    resource :mylessons, only: %i[create destroy]
    resource :logs, only: %i[create destroy]
    get :search, on: :collection
  end
end
