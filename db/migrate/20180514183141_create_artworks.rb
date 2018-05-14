class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :description
      t.string :string
      t.string :format
      t.string :date
      t.text :commentary
      t.string :photo
      t.integer :ranking
      t.string :category

      t.timestamps
    end
  end
end
