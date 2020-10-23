class AddMoreToChallenges < ActiveRecord::Migration[6.0]
  def change
    add_column :challenges, :title, :string
    add_column :challenges, :description, :text
    add_column :challenges, :point_value, :integer
  end
end
