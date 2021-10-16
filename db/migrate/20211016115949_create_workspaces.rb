class CreateWorkspaces < ActiveRecord::Migration[6.1]
  def change
    create_table :workspaces do |t|
      t.string :name, null: false, index: true
      t.references :user, null: false, foreign_key: true
      t.boolean :active, default: true, null: false
      t.text :details

      t.timestamps
    end
  end
end
