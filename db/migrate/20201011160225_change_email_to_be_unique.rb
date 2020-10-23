class ChangeEmailToBeUnique < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :email, :string, :unique => true, :null => false
  end
end
