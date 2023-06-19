Rails.application.routes.draw do
  get 'elections/index'
  get 'elections/show'
  devise_for :users
  root to: "pages#home"
  resources :elections, only: %i[index show]
end
