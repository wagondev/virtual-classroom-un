class RenameTypeToTypeMessage < ActiveRecord::Migration[5.1]
  def change
  	rename_column :messages, :type, :type_message
  end
end
