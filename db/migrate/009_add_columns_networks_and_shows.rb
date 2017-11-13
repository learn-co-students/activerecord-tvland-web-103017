class AddColumnsNetworksAndShows < ActiveRecord::Migration
  def change
    add_column :networks, :show_id, :integer
    add_column :shows, :day, :string
    add_column :shows, :season, :string
  end
end
