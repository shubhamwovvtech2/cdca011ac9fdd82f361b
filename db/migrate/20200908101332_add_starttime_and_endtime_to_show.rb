class AddStarttimeAndEndtimeToShow < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :starttime, :datetime
    add_column :shows, :endtime, :datetime
  end
end
