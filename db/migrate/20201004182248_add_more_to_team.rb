class AddMoreToTeam < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :title, :string
    add_column :teams, :score, :integer
  end
end
