class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.text :description
      t.string :band

      t.timestamps
    end
  end
end
