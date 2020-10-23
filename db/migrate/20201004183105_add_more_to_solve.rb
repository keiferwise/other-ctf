class AddMoreToSolve < ActiveRecord::Migration[6.0]
  def change
    add_column :solves, :points, :integer
    add_column :solves, :hint_used, :boolean
  end
end
