class CreateBiopics < ActiveRecord::Migration[5.1]
  def change
    create_table :biopics do |t|
      t.string :category
      t.string :name
      t.string :date
      t.string :localisation
      t.string :commentary
      t.timestamps
    end
  end
end
