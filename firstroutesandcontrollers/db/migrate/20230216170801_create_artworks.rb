class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|

      t.string :title, null: false, uniqueness: true
      t.string :image_url, null: false, uniqueness: true
      t.references :artist, foreign_key:{to_table: :users}, null: false, index: true

      t.timestamps
    end
  end
end
