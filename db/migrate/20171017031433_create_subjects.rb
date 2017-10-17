class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.integer :mid
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
