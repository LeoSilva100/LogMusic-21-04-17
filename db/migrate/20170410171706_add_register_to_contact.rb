class AddRegisterToContact < ActiveRecord::Migration
  def change
    add_reference :contacts, :register, index: true, foreign_key: true
  end
end
