Rails.application.routes.draw do
  root "habits#index"
  post "/habits/toggle_complete/:id", to: "habits#toggle_complete", as: "toggle_complete"

  resources :habits
end
