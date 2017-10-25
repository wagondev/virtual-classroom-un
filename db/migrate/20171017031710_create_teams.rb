class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :max_member
      t.text :description
      t.string :logo
      
      t.integer :group_id
      t.belongs_to :group, index: true
      
      t.timestamps
    end
  end
end
