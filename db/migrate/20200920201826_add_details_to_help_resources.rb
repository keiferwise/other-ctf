class AddDetailsToHelpResources < ActiveRecord::Migration[6.0]
  def change
    add_column :help_resources, :name, :string
    add_column :help_resources, :content, :text
  end
end
