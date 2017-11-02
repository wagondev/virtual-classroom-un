class MinToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :min_member, :integer
  end
end
