class CreateGroupInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :group_inscriptions do |t|
      t.string :rol

      t.timestamps
    end
  end
end
