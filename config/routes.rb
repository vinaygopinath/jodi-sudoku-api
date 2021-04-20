Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "users", defaults: { format: :json }, to: "users#find_or_create"
end
