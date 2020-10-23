class AddContestToTeam < ActiveRecord::Migration[6.0]
  def change
    add_reference :teams, :contest, null: false, foreign_key: true
  end
end
