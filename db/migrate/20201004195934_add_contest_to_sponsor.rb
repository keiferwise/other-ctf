class AddContestToSponsor < ActiveRecord::Migration[6.0]
  def change
    add_reference :sponsors, :contest, null: false, foreign_key: true
  end
end
