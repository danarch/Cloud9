Rails.application.routes.draw do

  devise_for :users
  crud = %i(create show update delete)

  resources :posts, only: crud + [:index] do
    collection do
      get :mine
    end
    resources :replies, only: crud + [:index]
  end

  resources :users, only: [:index] do
    member do
      post :friend
      post :unfriend
    end
  end

  get '/friends'         => 'users#friends'

  root to: "posts#index"
end
