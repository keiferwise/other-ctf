class AddChallengeToSolve < ActiveRecord::Migration[6.0]
  def change
    add_reference :solves, :challenge, null: false, foreign_key: true
  end
end
