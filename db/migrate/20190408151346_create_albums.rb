class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :release_date
      t.integer :number_of_tracks
      t.string :images
      t.belongs_to :artist
    end
  end
end
