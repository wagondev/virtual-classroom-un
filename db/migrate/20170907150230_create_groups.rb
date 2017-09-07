class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.integer :id
      t.string :name
      t.integer :number_member

      t.timestamps
    end
  end
end
