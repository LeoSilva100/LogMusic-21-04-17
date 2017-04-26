class AddRegisterToInbox < ActiveRecord::Migration[5.0]
  def change
    add_reference :inboxes, :register, foreign_key: true
  end
end
