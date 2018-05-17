class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :description
      t.integer :ranking
      t.string :format
      t.string :date
      t.text :commentary
      t.string :photo
      t.references  :project, foreign_key: true

      t.timestamps
    end
  end
end
