class CreateInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscriptions do |t|
      t.integer :id_team, index: true
      t.integer :id_user, index: true
      t.integer :id_group

      t.timestamps
    end
  end
end
