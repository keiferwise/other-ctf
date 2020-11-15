class AddTeamToHint < ActiveRecord::Migration[6.0]
  def change
    add_reference :hints, :team, null: false, foreign_key: true
  end
end
