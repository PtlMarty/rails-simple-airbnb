class AddImageUrlToFlat < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :image_url, :stringß
  end
end
