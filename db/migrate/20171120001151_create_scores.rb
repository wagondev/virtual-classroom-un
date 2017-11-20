class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :value_score
      t.integer :inscription_id
      
      t.belongs_to :assignment, index: true

      t.timestamps
    end
  end
end
