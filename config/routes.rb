Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v1 do
      jsonapi_resources :general_informations, only: [:index]
    end
  end
  
  root 'api/v1/general_informations#index'
end
