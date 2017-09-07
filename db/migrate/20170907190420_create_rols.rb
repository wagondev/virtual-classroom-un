class CreateRols < ActiveRecord::Migration[5.1]
  def change
    create_table :rols do |t|
      t.integer :idRol
      t.string :user_name
      t.string :password

      t.timestamps
    end
  end
end
