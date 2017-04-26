class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :name
      t.integer :age
      t.string :instrument
      t.string :stylo
      t.string :street
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
