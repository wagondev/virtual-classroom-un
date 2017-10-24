class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name

      t.integer :subject_id

      t.timestamps
    end
  end
end
