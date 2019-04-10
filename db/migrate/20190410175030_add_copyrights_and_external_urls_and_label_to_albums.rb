class AddCopyrightsAndExternalUrlsAndLabelToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :copyrights, :string
    add_column :albums, :external_urls, :string
    add_column :albums, :label, :string
  end
end
