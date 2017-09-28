class CreateTeamInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :team_inscriptions do |t|
      t.string :rol

      t.timestamps
    end
  end
end
