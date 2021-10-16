class Api::V1::WorkspaceResource < JSONAPI::Resource
  attributes :name, :details, :active

  has_one :user
end
