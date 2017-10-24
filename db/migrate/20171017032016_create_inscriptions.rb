class CreateInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscriptions do |t|
      t.integer :id_team
      t.integer :id_user
      t.integer :id_group

      t.belongs_to :user, index: true
      t.belongs_to :group, index: true

      t.timestamps
    end
  end
end 
