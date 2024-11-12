Rails.application.routes.draw do
  root "flash_cards#index"
  
  resources :flash_cards do
    collection do
      get 'review'
      post 'next_card'
    end
  end
end