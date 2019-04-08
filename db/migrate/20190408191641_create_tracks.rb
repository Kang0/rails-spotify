class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :duration_ms
      t.boolean :explicit
      t.integer :track_number
      t.belongs_to :album, foreign_key: true
    end
  end
end
