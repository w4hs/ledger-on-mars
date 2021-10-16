class Api::V1::UserResource < JSONAPI::Resource
  attributes :email, :first_name, :last_name, :nickname
  
  has_many :workspaces
end
