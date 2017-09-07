class CreateRols < ActiveRecord::Migration[5.1]
  def change
    create_table :rols do |t|
      t.integer :id
      t.string :user_name
      t.string :password

      t.timestamps
    end
  end
end
