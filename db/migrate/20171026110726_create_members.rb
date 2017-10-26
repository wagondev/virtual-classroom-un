class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.integer :user_id
      t.integer :team_id
      t.integer :level

      t.belongs_to :user, index: true
      t.belongs_to :team, index: true

      t.timestamps
    end
  end
end
