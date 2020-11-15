class AddHintPenaltyToTeam < ActiveRecord::Migration[6.0]
  def change
    add_column :challenges, :penalty, :integer

  end
end
