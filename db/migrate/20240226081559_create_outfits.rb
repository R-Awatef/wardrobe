class CreateOutfits < ActiveRecord::Migration[7.1]
  def change
    create_table :outfits do |t|
      t.string :title
      t.text :description
      t.integer :size

      t.timestamps
    end
  end
end
