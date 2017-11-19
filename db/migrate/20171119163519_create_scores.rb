class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.string :title

      t.belongs_to :assignment, index: true

      t.timestamps
    end
  end
end
