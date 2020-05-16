Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lessons#index'
  get "lessons/new" => "lessons#new"
  get "mylesson" => "lessons#mylesson"
  post "lessons" => "lessons#create"
end
