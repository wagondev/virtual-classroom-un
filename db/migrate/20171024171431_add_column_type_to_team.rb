class AddColumnTypeToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :type, :boolean
  end
end
