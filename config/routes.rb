Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: :index

  get "students/:id", to: "students#show", as: "student"
  get "students/:id/activate", to: "students#activate", as: "activate_student" to: redirect
end
