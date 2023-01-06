Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create, :edit, :delete]
  end
  resources :reviews, only: [:show, :edit, :update, :delete]
end
