class AddFavoriteToShow < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :favorite, :boolean
  end
end
