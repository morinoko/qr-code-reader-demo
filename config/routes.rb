Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'basic-qr-code-reader', to: 'basic_qr_codes#new'
end
