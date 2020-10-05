Rails.application.routes.draw do
  resources :posts do
    collection do
      get 'dashboard'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#index'



end
