class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
  include JSONAPI::ActsAsResourceController
end
