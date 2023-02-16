class RemoveArtworks < ActiveRecord::Migration[7.0]
  def change

    drop_table :artworks
  end
end
