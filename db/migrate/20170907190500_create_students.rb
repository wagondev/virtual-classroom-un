class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :idStudent
      t.string :name
      t.date :birth_day
      t.string :city
      t.string :ocupation
      t.string :career
      t.string :preferences
      t.string :about_me

      t.timestamps
    end
  end
end