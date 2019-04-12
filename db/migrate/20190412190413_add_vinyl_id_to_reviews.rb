class AddVinylIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :vinyl, foreign_key: true
  end
end
