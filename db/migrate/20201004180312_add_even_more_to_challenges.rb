class AddEvenMoreToChallenges < ActiveRecord::Migration[6.0]
  def change
    add_column :challenges, :hint, :text
    add_column :challenges, :link, :string
    add_column :challenges, :connection_string, :string
  end
end
