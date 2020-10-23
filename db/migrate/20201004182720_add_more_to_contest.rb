class AddMoreToContest < ActiveRecord::Migration[6.0]
  def change
    add_column :contests, :title, :string
    add_column :contests, :organiser, :string
    add_column :contests, :min_team_size, :integer
    add_column :contests, :max_team_size, :integer
    add_column :contests, :start, :datetime
    add_column :contests, :end, :datetime
    add_column :contests, :max_teams, :integer
    add_column :contests, :slogan, :string
  end
end
