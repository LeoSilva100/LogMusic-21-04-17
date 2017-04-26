class AddRegisterToAbout < ActiveRecord::Migration[5.0]
  def change
    add_reference :abouts, :register, foreign_key: true
  end
end
