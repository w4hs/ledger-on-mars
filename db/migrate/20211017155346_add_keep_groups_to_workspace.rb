class AddKeepGroupsToWorkspace < ActiveRecord::Migration[6.1]
  def change
    add_column :keepr_groups, :workspace_id, :bigint

    add_index :keepr_groups, :workspace_id
  end
end
