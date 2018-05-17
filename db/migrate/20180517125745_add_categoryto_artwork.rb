class AddCategorytoArtwork < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :category, :string
  end
end
