class GeneralInformation < ApplicationRecord
  validates :title, :purpose, :status, :last_update, presence: true
end
