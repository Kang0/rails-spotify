class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :release_date
      t.integer :number_of_tracks
      t.string :images
      t.string :tracks
      t.belongs_to :artist
    end
  end
end
