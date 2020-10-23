class AddTeamToSolve < ActiveRecord::Migration[6.0]
  def change
    add_reference :solves, :team, null: false, foreign_key: true
  end
end
