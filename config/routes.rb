Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :elections, only: %i[index show edit update] do
    resources :user_elections, only: %i[create]
    member do
      get :results
    end
  end
  resources :restaurants, only: %i[new create show] do
    resources :votes, only: %i[new create edit update destroy]
  end
end
