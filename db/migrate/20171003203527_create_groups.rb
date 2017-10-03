class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.integer :number_max_person
      t.string :photo

      t.timestamps
    end
  end
end
