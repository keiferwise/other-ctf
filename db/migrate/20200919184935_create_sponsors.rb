class CreateSponsors < ActiveRecord::Migration[6.0]
  def change
    create_table :sponsors do |t|

      t.timestamps
    end
  end
end
