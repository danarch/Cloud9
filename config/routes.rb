Rails.application.routes.draw do

  devise_for :users
  crud = %i(create show update delete)

  resources :posts, only: crud + [:index] do
    collection do
      get :mine
    end
    resources :replies, only: crud + [:index]
  end

  root to: "posts#index"
end
