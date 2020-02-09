Rails.application.routes.draw do
  # For details on the DSL available within t
  get 'basic-qr-code-reader', to: 'basic_qr_codes#new'
end
