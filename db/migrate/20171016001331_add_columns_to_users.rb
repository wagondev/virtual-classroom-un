class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :identification, :string
    add_column :users, :student, :boolean
    add_column :users, :photo, :string
    add_column :users, :career, :string
  end
end
