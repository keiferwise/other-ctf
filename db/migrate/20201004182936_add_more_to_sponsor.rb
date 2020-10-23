class AddMoreToSponsor < ActiveRecord::Migration[6.0]
  def change
    add_column :sponsors, :title, :string
    add_column :sponsors, :logo, :binary
    add_column :sponsors, :link, :string
    add_column :sponsors, :tier, :string
    add_column :sponsors, :slogan, :string
    add_column :sponsors, :about, :text
  end
end
