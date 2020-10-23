class AddContestToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :contest, null: true, foreign_key: true
  end
end
