class Api::V1::GeneralInformationResource < JSONAPI::Resource
  attributes :title, :purpose, :status, :last_update
end
