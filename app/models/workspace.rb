# == Schema Information
#
# Table name: workspaces
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(TRUE), not null
#  details    :text
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_workspaces_on_name     (name)
#  index_workspaces_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Workspace < ApplicationRecord
  belongs_to :user

  has_many :groups, class_name: 'Keepr::Group'
end
