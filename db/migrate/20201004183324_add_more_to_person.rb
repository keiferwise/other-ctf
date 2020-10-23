class AddMoreToPerson < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :bio, :text
    add_column :people, :first_name, :string
    add_column :people, :last_name, :string
    add_column :people, :picture, :binary
  end
end
