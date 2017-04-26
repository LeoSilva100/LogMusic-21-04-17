class AddLoginToInbox < ActiveRecord::Migration[5.0]
  def change
    add_reference :inboxes, :login, foreign_key: true
  end
end
