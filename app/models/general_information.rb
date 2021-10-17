# == Schema Information
#
# Table name: general_informations
#
#  id          :bigint           not null, primary key
#  last_update :datetime
#  purpose     :text
#  status      :boolean          default(TRUE)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class GeneralInformation < ApplicationRecord
  validates :title, :purpose, :status, :last_update, presence: true
end
