Rails.application.routes.draw do
  get 'public_videos/index'
  resources :videos do
    member do
      post "view_plus"
    end
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'public_videos#index'
end
