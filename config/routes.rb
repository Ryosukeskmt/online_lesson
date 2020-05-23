Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "mylesson" => "lessons#mylesson"
  root 'lessons#index'
  resources :lessons
  resources :comments, only: [:create,:destroy]
end
