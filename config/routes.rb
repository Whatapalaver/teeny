Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "site#index"
  devise_for :users, controllers: { confirmations: 'users/sessions' }
end
