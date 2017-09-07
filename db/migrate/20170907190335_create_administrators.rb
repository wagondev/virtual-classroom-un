class CreateAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators do |t|
      t.integer :idAdministrator
      t.string :name

      t.timestamps
    end
  end
end
