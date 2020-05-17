Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "mylesson" => "lessons#mylesson"
  root 'lessons#index'
  resources :lessons, only: [:index, :new, :create, :show, :edit, :update]
end
