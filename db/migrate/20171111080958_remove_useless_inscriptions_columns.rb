class RemoveUselessInscriptionsColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :inscriptions, :id_team, :integer
    remove_column :inscriptions, :id_user, :integer
    remove_column :inscriptions, :id_group, :integer
  end
end
