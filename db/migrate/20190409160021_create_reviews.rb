class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.boolean :recommend
      t.belongs_to :user, foreign_key: true
      t.belongs_to :album, foreign_key: true
    end
  end
end
