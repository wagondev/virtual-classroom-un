class CreateInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscriptions do |t|
      t.integer :idInscription
      t.integer :idStudent
      t.integer :idCourse

      t.timestamps
    end
  end
end
