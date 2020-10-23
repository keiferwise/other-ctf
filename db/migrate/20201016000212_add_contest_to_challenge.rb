class AddContestToChallenge < ActiveRecord::Migration[6.0]
  def change
    add_reference :challenges, :contest, null: false, foreign_key: true
  end
end
