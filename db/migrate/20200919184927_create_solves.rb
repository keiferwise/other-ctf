class CreateSolves < ActiveRecord::Migration[6.0]
  def change
    create_table :solves do |t|

      t.timestamps
    end
  end
end
