class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.integer :nident
      t.string :name
      t.boolean :administrator
      t.boolean :isStudent
      t.boolean :owner
      t.string :gender
      t.string :career
      t.string :city
      t.text :aboutme

      t.timestamps
    end
  end
end
