class AddUserReferenceToKeeprGroupAndKeeprAccount < ActiveRecord::Migration[6.1]
  def change
    add_reference :keepr_accounts, :user, null: false, foreign_key: true
    add_reference :keepr_groups, :user, null: false, foreign_key: true
  end
end
