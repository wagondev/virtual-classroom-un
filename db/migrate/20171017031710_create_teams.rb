class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :max_member
      t.text :description
      t.string :logo

      t.timestamps
    end
  end
end
