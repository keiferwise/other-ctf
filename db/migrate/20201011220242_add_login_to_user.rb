class AddLoginToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :login, :string
    remove_column :users, :username
  end
end
