class AddMoreToFlag < ActiveRecord::Migration[6.0]
  def change
    add_column :flags, :answer, :string
  end
end
