class CreateHelpResources < ActiveRecord::Migration[6.0]
  def change
    create_table :help_resources do |t|

      t.timestamps
    end
  end
end
