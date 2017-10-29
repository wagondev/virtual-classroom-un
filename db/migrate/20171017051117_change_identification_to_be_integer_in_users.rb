class ChangeIdentificationToBeIntegerInUsers < ActiveRecord::Migration[5.1]
  def change
    #change_column :users, :identification, 'integer USING CAST(identification AS integer)'
    change_column :users, :identification, :integer
  end
end
