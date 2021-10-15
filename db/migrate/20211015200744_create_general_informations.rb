class CreateGeneralInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :general_informations do |t|
      t.string :title
      t.text :purpose
      t.boolean :status, default: 'Healthy'
      t.datetime :last_update

      t.timestamps
    end
  end
end
