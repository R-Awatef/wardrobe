class AddImgUrlAndCategoryToOutfits < ActiveRecord::Migration[7.1]
  def change
    add_column :outfits, :img_url, :string
    add_column :outfits, :category, :string
  end
end
