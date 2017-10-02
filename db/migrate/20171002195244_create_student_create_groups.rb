class CreateStudentCreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :student_create_groups do |t|
      t.string, :nombre
      t.integer, :maxIntegrantes
      t.text :descripcion

      t.timestamps
    end
  end
end
