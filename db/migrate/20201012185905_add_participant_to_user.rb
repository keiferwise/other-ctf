class AddParticipantToUser < ActiveRecord::Migration[6.0]
  def change    
    add_column :users, :participant, :boolean, :default => false
  end
end
