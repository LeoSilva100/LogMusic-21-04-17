class AddLoginToRegister < ActiveRecord::Migration
  def change
    add_reference :registers, :login, index: true, foreign_key: true
  end
end
