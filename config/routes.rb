Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :customers, only: [:index]

  resources :movies, only: [:index, :show], param: :title
  post "/movies",  to: "movies#create"
  get "/rentals", to: "rentals#index"
  # post "/rentals",  to: "rentals#checkout"
  post "/rentals/:title/check-out", to: "rentals#check_out", as: "check_out"
  post "/rentals/:movie_id/return", to: "rentals#check_in", as: "check_in"
  get "/rentals/overdue", to: "rentals#overdue", as: "overdue"


end
