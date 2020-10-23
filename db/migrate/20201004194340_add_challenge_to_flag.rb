class AddChallengeToFlag < ActiveRecord::Migration[6.0]
  def change
    add_reference :flags, :challenge, null: false, foreign_key: true
  end
end
