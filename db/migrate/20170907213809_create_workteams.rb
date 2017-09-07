class CreateWorkteams < ActiveRecord::Migration[5.1]
  def change
    create_table :workteams do |t|
      t.integer :idWorkteam
      t.integer :idStudent
      t.integer :idGroup

      t.timestamps
    end
  end
end
