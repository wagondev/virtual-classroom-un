class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :id_user
      t.string :integer
      t.string :id_team
      t.string :integer
      t.string :level
      t.string :integer

      t.belongs_to :user, index: true
      t.belongs_to :team, index: true

      t.timestamps
    end
  end
end
