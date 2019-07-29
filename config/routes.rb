Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :whispers do
    collection do
      post :confirm
    end
  end
  # root to: 'whispers#index'
end
