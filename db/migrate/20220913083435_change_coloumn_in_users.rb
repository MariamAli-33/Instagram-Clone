class ChangeColoumnInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :username, false
    change_column_default :users, :username, ''
    add_index :users, :account
  end
end
