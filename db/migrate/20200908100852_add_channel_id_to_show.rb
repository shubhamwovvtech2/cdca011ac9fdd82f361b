class AddChannelIdToShow < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :channel_id, :integer
  end
end
