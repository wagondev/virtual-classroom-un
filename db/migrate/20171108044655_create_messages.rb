class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :member, foreign_key: true
      t.string :title
      t.string :body
      t.float :latutude
      t.float :longitude
      t.string :address
      t.datetime :meeting
      t.string :document
      t.int :type

      t.timestamps
    end
  end
end
