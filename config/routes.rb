Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      jsonapi_resources :general_informations, only: [:index]
    end
  end
  
  root 'api/v1/general_informations#index'
end
