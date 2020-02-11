Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  
  get 'basic-qr-code-reader', to: 'basic_qr_codes#new'
  resources :rails_qr_codes, only: [:index, :new, :create, :show]
end
