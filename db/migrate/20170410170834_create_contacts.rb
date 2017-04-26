class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :facebook
      t.string :instagram
      t.string :twitter

      t.timestamps null: false
    end
  end
end
