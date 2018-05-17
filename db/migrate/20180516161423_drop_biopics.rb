class DropBiopics < ActiveRecord::Migration[5.1]
  def change
    drop_table :biopics
  end
end
