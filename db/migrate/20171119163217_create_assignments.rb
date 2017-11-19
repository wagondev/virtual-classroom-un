class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :title
      t.float :percent
      
      t.integer :group_id
      t.belongs_to :group, index: true

      t.timestamps
    end
  end
end
