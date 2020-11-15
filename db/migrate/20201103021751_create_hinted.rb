class CreateHinted < ActiveRecord::Migration[6.0]
  def change
    create_table :hints do |t|
      t.timestamps
    end
  end
end
