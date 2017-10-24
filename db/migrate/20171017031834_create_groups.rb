class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :subject_id
      t.belongs_to :subject, index: true

      t.timestamps
    end
  end
end
