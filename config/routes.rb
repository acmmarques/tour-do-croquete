Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :elections, only: %i[index show]
  resources :restaurants, only: %i[show] do
    resources :votes, only: %i[new]
  end
end
