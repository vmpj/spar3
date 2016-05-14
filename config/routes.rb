Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  root "pages#index"

  # React Router needs a wildcard
  get "react-router(/*all)", to: "pages#index"

  resources :comments
end
